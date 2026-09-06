package com.atmaca.batch50;
import org.junit.Test;
import static org.junit.Assert.*;
public class AppPathsTest {
    @Test public void imageFilterAcceptsExpectedFormats(){
        assertTrue(AppPaths.isImageName("A.JPG"));
        assertTrue(AppPaths.isImageName("x.heic"));
        assertTrue(AppPaths.isImageName("z.webp"));
        assertFalse(AppPaths.isImageName("video.mp4"));
    }
}
