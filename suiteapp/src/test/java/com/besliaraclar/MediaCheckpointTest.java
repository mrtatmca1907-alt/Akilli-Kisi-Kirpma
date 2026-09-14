package com.besliaraclar;

import org.junit.Test;
import static org.junit.Assert.*;

public class MediaCheckpointTest {
    @Test public void newerDateIsAfterCheckpoint() {
        MediaCheckpoint c = new MediaCheckpoint(100L, 50L);
        assertTrue(c.accepts(101L, 1L));
        assertFalse(c.accepts(99L, 999L));
    }

    @Test public void sameDateUsesMediaId() {
        MediaCheckpoint c = new MediaCheckpoint(100L, 50L);
        assertTrue(c.accepts(100L, 51L));
        assertFalse(c.accepts(100L, 50L));
    }

    @Test public void advanceMovesCheckpointForward() {
        MediaCheckpoint c = new MediaCheckpoint(100L, 50L);
        MediaCheckpoint n = c.advance(100L, 51L);
        assertEquals(100L, n.added);
        assertEquals(51L, n.id);
    }
}
