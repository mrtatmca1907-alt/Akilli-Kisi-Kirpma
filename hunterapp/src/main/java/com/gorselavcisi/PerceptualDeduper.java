package com.gorselavcisi;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 * Aynı fotoğrafın farklı çözünürlük, yeniden sıkıştırılmış veya hafifçe işlenmiş
 * kopyalarını SHA-256'dan bağımsız olarak yakalamak için 64 bit pHash kullanır.
 * Kayıtlar arama bazında kalıcıdır; uygulama kapanıp açılsa da aynı görsel yeniden indirilmez.
 */
final class PerceptualDeduper {
    private static final int HASH_SIZE = 32;
    private static final int LOW = 8;
    private static final int MAX_HAMMING_DISTANCE = 8;

    private final File store;
    private final List<Long> known = new ArrayList<>();

    PerceptualDeduper(Context context, String querySlug) {
        store = new File(context.getFilesDir(), "phash_" + safeId(querySlug) + ".txt");
        load();
    }

    synchronized boolean isDuplicateOrRemember(File imageFile) {
        Long hash = pHash(imageFile);
        if (hash == null) return false;

        for (long old : known) {
            if (Long.bitCount(old ^ hash) <= MAX_HAMMING_DISTANCE) {
                return true;
            }
        }

        known.add(hash);
        append(hash);
        return false;
    }

    private void load() {
        if (!store.isFile()) return;
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(
                new FileInputStream(store), StandardCharsets.UTF_8))) {
            String line;
            while ((line = reader.readLine()) != null) {
                line = line.trim();
                if (line.length() != 16) continue;
                try { known.add(Long.parseUnsignedLong(line, 16)); }
                catch (Throwable ignored) {}
            }
        } catch (Throwable ignored) {}
    }

    private void append(long hash) {
        try (FileOutputStream out = new FileOutputStream(store, true)) {
            String line = String.format(Locale.ROOT, "%016x\n", hash);
            out.write(line.getBytes(StandardCharsets.UTF_8));
            out.flush();
        } catch (Throwable ignored) {}
    }

    private static Long pHash(File file) {
        Bitmap decoded = null;
        Bitmap small = null;
        try {
            BitmapFactory.Options bounds = new BitmapFactory.Options();
            bounds.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(file.getAbsolutePath(), bounds);
            if (bounds.outWidth <= 0 || bounds.outHeight <= 0) return null;

            BitmapFactory.Options opts = new BitmapFactory.Options();
            int max = Math.max(bounds.outWidth, bounds.outHeight);
            int sample = 1;
            while (max / sample > 1024) sample *= 2;
            opts.inSampleSize = sample;
            opts.inPreferredConfig = Bitmap.Config.ARGB_8888;
            decoded = BitmapFactory.decodeFile(file.getAbsolutePath(), opts);
            if (decoded == null) return null;

            small = Bitmap.createScaledBitmap(decoded, HASH_SIZE, HASH_SIZE, true);
            int[] pixels = new int[HASH_SIZE * HASH_SIZE];
            small.getPixels(pixels, 0, HASH_SIZE, 0, 0, HASH_SIZE, HASH_SIZE);

            double[] gray = new double[pixels.length];
            for (int i = 0; i < pixels.length; i++) {
                int p = pixels[i];
                int r = (p >> 16) & 255;
                int g = (p >> 8) & 255;
                int b = p & 255;
                gray[i] = 0.299 * r + 0.587 * g + 0.114 * b;
            }

            double[] coeff = new double[LOW * LOW];
            int ci = 0;
            for (int v = 0; v < LOW; v++) {
                for (int u = 0; u < LOW; u++) {
                    double sum = 0.0;
                    for (int y = 0; y < HASH_SIZE; y++) {
                        double cy = Math.cos(((2.0 * y + 1.0) * v * Math.PI) / (2.0 * HASH_SIZE));
                        int row = y * HASH_SIZE;
                        for (int x = 0; x < HASH_SIZE; x++) {
                            double cx = Math.cos(((2.0 * x + 1.0) * u * Math.PI) / (2.0 * HASH_SIZE));
                            sum += gray[row + x] * cx * cy;
                        }
                    }
                    coeff[ci++] = sum;
                }
            }

            double[] sorted = new double[coeff.length - 1];
            System.arraycopy(coeff, 1, sorted, 0, sorted.length);
            java.util.Arrays.sort(sorted);
            double median = sorted[sorted.length / 2];

            long hash = 0L;
            for (int i = 1; i < coeff.length; i++) {
                if (coeff[i] > median) hash |= (1L << i);
            }
            return hash;
        } catch (Throwable ignored) {
            return null;
        } finally {
            if (small != null && small != decoded) small.recycle();
            if (decoded != null) decoded.recycle();
        }
    }

    private static String safeId(String value) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] d = md.digest((value == null ? "arama" : value).getBytes(StandardCharsets.UTF_8));
            StringBuilder b = new StringBuilder();
            for (int i = 0; i < 8; i++) b.append(String.format(Locale.ROOT, "%02x", d[i]));
            return b.toString();
        } catch (Throwable ignored) {
            return "default";
        }
    }
}
