package com.akillikisikirpma;

import org.junit.Test;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import static org.junit.Assert.*;

public class CompletedKeyIndexTest {
    @Test public void duplicateKeyIsNotAddedTwice() {
        CompletedKeyIndex index = new CompletedKeyIndex(new HashSet<>());
        assertTrue(index.markCompleted("a"));
        assertFalse(index.markCompleted("a"));
        assertEquals(1, index.snapshot().size());
    }

    @Test public void existingKeysAreRecognizedAfterRestart() {
        Set<String> seed = new HashSet<>(Arrays.asList("one", "two"));
        CompletedKeyIndex index = new CompletedKeyIndex(seed);
        assertTrue(index.isCompleted("one"));
        assertFalse(index.isCompleted("three"));
    }
}
