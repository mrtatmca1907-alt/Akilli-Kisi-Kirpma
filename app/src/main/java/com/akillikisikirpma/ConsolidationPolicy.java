package com.akillikisikirpma;

final class ConsolidationPolicy {
    private ConsolidationPolicy() {}

    static boolean isDuplicate(String sourceName, long sourceSize, String targetName, long targetSize) {
        if (sourceName == null || targetName == null) return false;
        if (!sourceName.equalsIgnoreCase(targetName)) return false;
        if (sourceSize <= 0L || targetSize <= 0L) return false;
        return sourceSize == targetSize;
    }
}
