package com.akillikisikirpma;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

final class CompletedKeyIndex {
    private final Set<String> keys;

    CompletedKeyIndex(Set<String> seed) {
        keys = new HashSet<>(seed == null ? Collections.emptySet() : seed);
    }

    synchronized boolean isCompleted(String key) {
        return key != null && keys.contains(key);
    }

    synchronized boolean markCompleted(String key) {
        return key != null && !key.isEmpty() && keys.add(key);
    }

    synchronized Set<String> snapshot() {
        return new HashSet<>(keys);
    }
}
