package com.atmaca.dosyalar;

import static org.junit.Assert.*;
import org.junit.Test;
import java.io.File;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;

public class FastLocalOpsTest {
    @Test public void movesLocalFileDirectly() throws Exception {
        File dir = Files.createTempDirectory("atmaca-fastops").toFile();
        File src = new File(dir, "a.txt");
        File dstDir = new File(dir, "dst");
        assertTrue(dstDir.mkdir());
        Files.write(src.toPath(), "1907".getBytes(StandardCharsets.UTF_8));
        File out = FastLocalOps.moveRenameFirst(src, dstDir, "a.txt");
        assertFalse(src.exists());
        assertTrue(out.isFile());
        assertEquals("1907", new String(Files.readAllBytes(out.toPath()), StandardCharsets.UTF_8));
    }

    @Test public void removesOnlyNomediaRecursively() throws Exception {
        File root = Files.createTempDirectory("atmaca-1907").toFile();
        File nested = new File(root, "alt/derin");
        assertTrue(nested.mkdirs());
        File rootNomedia = new File(root, ".nomedia");
        File nestedNomedia = new File(nested, ".nomedia");
        File photo = new File(nested, "foto.jpg");
        File similarName = new File(nested, ".nomedia.bak");
        assertTrue(rootNomedia.createNewFile());
        assertTrue(nestedNomedia.createNewFile());
        assertTrue(photo.createNewFile());
        assertTrue(similarName.createNewFile());

        NomediaCleaner.Result result = NomediaCleaner.clean(root);

        assertEquals(2, result.deleted);
        assertEquals(0, result.failed);
        assertFalse(rootNomedia.exists());
        assertFalse(nestedNomedia.exists());
        assertTrue(photo.exists());
        assertTrue(similarName.exists());
        assertTrue(nested.isDirectory());
    }

    @Test public void collectsPhotosFrom1907AndSubfolders() throws Exception {
        File sandbox = Files.createTempDirectory("atmaca-photo-collector").toFile();
        File source = new File(sandbox, "Pictures/1907");
        File deep = new File(source, "a/b/c");
        File target = new File(sandbox, "Pictures/TUM_FOTOGRAFLAR");
        assertTrue(deep.mkdirs());
        assertTrue(target.mkdirs());

        File jpg = new File(source, "foto.jpg");
        File png = new File(deep, "resim.png");
        File heic = new File(deep, "telefon.heic");
        File video = new File(deep, "video.mp4");
        File nomedia = new File(deep, ".nomedia");
        Files.write(jpg.toPath(), "jpg".getBytes(StandardCharsets.UTF_8));
        Files.write(png.toPath(), "png".getBytes(StandardCharsets.UTF_8));
        Files.write(heic.toPath(), "heic".getBytes(StandardCharsets.UTF_8));
        Files.write(video.toPath(), "video".getBytes(StandardCharsets.UTF_8));
        assertTrue(nomedia.createNewFile());

        PhotoCollector.Result result = PhotoCollector.movePhotos(source, target, null);

        assertEquals(3, result.moved);
        assertEquals(0, result.failed);
        assertFalse(jpg.exists());
        assertFalse(png.exists());
        assertFalse(heic.exists());
        assertTrue(video.exists());
        assertTrue(nomedia.exists());
        assertTrue(new File(target, "foto.jpg").isFile());
        assertTrue(new File(target, "resim.png").isFile());
        assertTrue(new File(target, "telefon.heic").isFile());
    }

    @Test public void keepsBothPhotosWhenNamesCollide() throws Exception {
        File sandbox = Files.createTempDirectory("atmaca-photo-collision").toFile();
        File source = new File(sandbox, "1907");
        File one = new File(source, "one");
        File two = new File(source, "two");
        File target = new File(sandbox, "TUM_FOTOGRAFLAR");
        assertTrue(one.mkdirs());
        assertTrue(two.mkdirs());
        assertTrue(target.mkdirs());
        Files.write(new File(one, "aynı.jpg").toPath(), "1".getBytes(StandardCharsets.UTF_8));
        Files.write(new File(two, "aynı.jpg").toPath(), "2".getBytes(StandardCharsets.UTF_8));

        PhotoCollector.Result result = PhotoCollector.movePhotos(source, target, null);

        assertEquals(2, result.moved);
        assertTrue(new File(target, "aynı.jpg").isFile());
        assertTrue(new File(target, "aynı (1).jpg").isFile());
    }
}