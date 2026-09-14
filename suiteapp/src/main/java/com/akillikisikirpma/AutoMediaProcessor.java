package com.akillikisikirpma;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;

import com.besliaraclar.AutoMediaPolicy;
import com.besliaraclar.MediaCheckpoint;

import java.io.File;
import java.io.FileOutputStream;

final class AutoMediaProcessor {
    interface Control {
        boolean shouldStop();
        void onProgress(String text);
    }

    private static final String PREFS = "auto_media_state";
    private static final String OUT_PHOTOS = "AkilliKisiKirpma";
    private static final String OUT_VIDEOS = "VideoKareleri";

    private final Context context;
    private final ContentResolver resolver;
    private final SharedPreferences prefs;
    private final Control control;

    AutoMediaProcessor(Context context, Control control) {
        this.context = context.getApplicationContext();
        this.resolver = this.context.getContentResolver();
        this.prefs = this.context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        this.control = control;
    }

    boolean runUntilIdle() {
        boolean didWork;
        do {
            if (control.shouldStop()) return false;
            didWork = false;
            MediaItem video = next(false);
            if (video != null) {
                didWork = true;
                processVideo(video);
                advance(false, video);
            }
            if (control.shouldStop()) return false;
            MediaItem image = next(true);
            if (image != null) {
                didWork = true;
                processImage(image);
                advance(true, image);
            }
        } while (didWork && !control.shouldStop());
        return !control.shouldStop();
    }

    private MediaItem next(boolean image) {
        String prefix = image ? "image" : "video";
        Uri collection = image ? MediaStore.Images.Media.EXTERNAL_CONTENT_URI : MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
        long checkpointAdded = prefs.getLong(prefix + "_added", 0L);
        long checkpointId = prefs.getLong(prefix + "_id", 0L);
        MediaCheckpoint checkpoint = new MediaCheckpoint(checkpointAdded, checkpointId);

        while (!control.shouldStop()) {
            String[] projection = new String[]{
                    MediaStore.MediaColumns._ID,
                    MediaStore.MediaColumns.DISPLAY_NAME,
                    MediaStore.MediaColumns.DATE_ADDED,
                    MediaStore.MediaColumns.RELATIVE_PATH,
                    MediaStore.MediaColumns.DATA,
                    MediaStore.MediaColumns.SIZE
            };
            Bundle args = new Bundle();
            args.putString(ContentResolver.QUERY_ARG_SQL_SELECTION,
                    MediaStore.MediaColumns.DATE_ADDED + " > ? OR (" + MediaStore.MediaColumns.DATE_ADDED + " = ? AND " + MediaStore.MediaColumns._ID + " > ?)");
            args.putStringArray(ContentResolver.QUERY_ARG_SQL_SELECTION_ARGS,
                    new String[]{String.valueOf(checkpoint.added), String.valueOf(checkpoint.added), String.valueOf(checkpoint.id)});
            args.putStringArray(ContentResolver.QUERY_ARG_SORT_COLUMNS,
                    new String[]{MediaStore.MediaColumns.DATE_ADDED, MediaStore.MediaColumns._ID});
            args.putInt(ContentResolver.QUERY_ARG_SORT_DIRECTION, ContentResolver.QUERY_SORT_DIRECTION_ASCENDING);
            args.putInt(ContentResolver.QUERY_ARG_LIMIT, 1);

            try (Cursor c = resolver.query(collection, projection, args, null)) {
                if (c == null || !c.moveToFirst()) return null;
                MediaItem item = new MediaItem(
                        c.getLong(0), c.getString(1), c.getLong(2), c.getString(3), c.getString(4), c.getLong(5), collection
                );
                if (AutoMediaPolicy.isOwnOutputPath(item.relativePath)) {
                    advance(image, item);
                    checkpoint = new MediaCheckpoint(item.added, item.id);
                    continue;
                }
                if (image ? !AutoMediaPolicy.isImage(item.name) : !AutoMediaPolicy.isVideo(item.name)) {
                    advance(image, item);
                    checkpoint = new MediaCheckpoint(item.added, item.id);
                    continue;
                }
                return item;
            } catch (Throwable t) {
                prefs.edit().putString("last_error", "MediaStore: " + t).apply();
                return null;
            }
        }
        return null;
    }

    private void advance(boolean image, MediaItem item) {
        String prefix = image ? "image" : "video";
        prefs.edit().putLong(prefix + "_added", item.added).putLong(prefix + "_id", item.id).apply();
    }

    private void processImage(MediaItem item) {
        control.onProgress("Fotoğraf: " + item.name);
        if (item.path == null || item.path.isEmpty()) {
            recordError("Fotoğraf yolu alınamadı: " + item.name);
            return;
        }
        File source = new File(item.path);
        if (!source.isFile()) return;
        try (PersonCropEngine engine = new PersonCropEngine(context)) {
            PersonCropEngine.ProcessResult result = engine.process(Uri.fromFile(source), item.id, item.name, mimeFor(item.name));
            if (result.originalSaved) normalizePhotoFolder(item);
            if (result.failed > 0) recordError("Fotoğraf kısmi hata: " + item.name + " / " + result.failed);
        } catch (Throwable t) {
            recordError("Fotoğraf hata: " + item.name + " / " + t.getMessage());
        }
    }

    private void normalizePhotoFolder(MediaItem item) {
        String base = safeBase(item.name);
        File root = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), OUT_PHOTOS);
        File generated = new File(root, base + "_" + item.id);
        if (!generated.isDirectory()) return;
        File target = new File(root, base);
        if (target.exists()) {
            for (int i = 2; i < 100000; i++) {
                File candidate = new File(root, base + " (" + i + ")");
                if (!candidate.exists()) { target = candidate; break; }
            }
        }
        if (!generated.renameTo(target)) recordError("Fotoğraf klasörü adlandırılamadı: " + item.name);
    }

    private void processVideo(MediaItem item) {
        control.onProgress("Video: " + item.name);
        if (item.path == null || item.path.isEmpty()) {
            recordError("Video yolu alınamadı: " + item.name);
            return;
        }
        File source = new File(item.path);
        if (!source.isFile()) return;

        long activeId = prefs.getLong("active_video_id", -1L);
        long activeAdded = prefs.getLong("active_video_added", -1L);
        long nextSecond = (activeId == item.id && activeAdded == item.added)
                ? prefs.getLong("active_video_next_second", 0L) : 0L;
        prefs.edit().putLong("active_video_id", item.id)
                .putLong("active_video_added", item.added)
                .putLong("active_video_next_second", nextSecond).apply();

        MediaMetadataRetriever retriever = new MediaMetadataRetriever();
        boolean complete = true;
        try {
            retriever.setDataSource(source.getAbsolutePath());
            String durationText = retriever.extractMetadata(MediaMetadataRetriever.METADATA_KEY_DURATION);
            long durationMs = durationText == null ? 0L : Long.parseLong(durationText);
            long seconds = Math.max(1L, (durationMs + 999L) / 1000L);
            String base = safeBase(item.name);
            File dir = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), OUT_VIDEOS + "/" + base);
            if (!dir.exists() && !dir.mkdirs()) throw new IllegalStateException("Video çıktı klasörü oluşturulamadı");

            for (long s = nextSecond; s < seconds; s++) {
                if (control.shouldStop()) { complete = false; break; }
                File out = new File(dir, base + " " + (s + 1) + ".jpg");
                if (!out.isFile() || out.length() == 0) {
                    Bitmap frame = retriever.getFrameAtTime(s * 1_000_000L, MediaMetadataRetriever.OPTION_CLOSEST);
                    if (frame == null) {
                        complete = false;
                        recordError("Kare alınamadı: " + item.name + " / " + (s + 1));
                        break;
                    }
                    try {
                        if (!saveFrame(frame, out)) {
                            complete = false;
                            recordError("Kare kaydedilemedi: " + out.getName());
                            break;
                        }
                    } finally {
                        frame.recycle();
                    }
                }
                prefs.edit().putLong("active_video_next_second", s + 1).apply();
                control.onProgress("Video: " + item.name + " • " + (s + 1) + "/" + seconds);
            }

            if (complete && !control.shouldStop()) {
                if (!source.delete()) {
                    complete = false;
                    recordError("Video silinemedi: " + item.name);
                } else {
                    try { resolver.delete(ContentUris.withAppendedId(item.collection, item.id), null, null); }
                    catch (Throwable ignored) {}
                }
            }
        } catch (Throwable t) {
            complete = false;
            recordError("Video hata: " + item.name + " / " + t.getMessage());
        } finally {
            try { retriever.release(); } catch (Throwable ignored) {}
            if (complete || !control.shouldStop()) {
                prefs.edit().remove("active_video_id").remove("active_video_added").remove("active_video_next_second").apply();
            }
        }
    }

    private boolean saveFrame(Bitmap frame, File out) {
        try (FileOutputStream fos = new FileOutputStream(out)) {
            boolean ok = frame.compress(Bitmap.CompressFormat.JPEG, 100, fos);
            fos.flush();
            if (!ok || out.length() == 0) { out.delete(); return false; }
            return true;
        } catch (Throwable t) {
            try { out.delete(); } catch (Throwable ignored) {}
            return false;
        }
    }

    private String safeBase(String name) {
        String n = name == null ? "medya" : name;
        int dot = n.lastIndexOf('.');
        if (dot > 0) n = n.substring(0, dot);
        n = n.replaceAll("[\\/:*?\"<>|]", "_").trim();
        return n.isEmpty() ? "medya" : n;
    }

    private String mimeFor(String name) {
        if (name == null) return "image/jpeg";
        String n = name.toLowerCase();
        if (n.endsWith(".png")) return "image/png";
        if (n.endsWith(".webp")) return "image/webp";
        if (n.endsWith(".heic") || n.endsWith(".heif")) return "image/heic";
        return "image/jpeg";
    }

    private void recordError(String text) {
        prefs.edit().putString("last_error", text)
                .putInt("error_count", prefs.getInt("error_count", 0) + 1).apply();
    }

    private static final class MediaItem {
        final long id;
        final String name;
        final long added;
        final String relativePath;
        final String path;
        final long size;
        final Uri collection;

        MediaItem(long id, String name, long added, String relativePath, String path, long size, Uri collection) {
            this.id = id;
            this.name = name == null ? "medya" : name;
            this.added = added;
            this.relativePath = relativePath;
            this.path = path;
            this.size = size;
            this.collection = collection;
        }
    }
}
