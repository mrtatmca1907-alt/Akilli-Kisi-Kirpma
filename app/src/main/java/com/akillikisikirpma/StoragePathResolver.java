package com.akillikisikirpma;

import java.io.File;

final class StoragePathResolver {
    private StoragePathResolver() {}

    static File fromDocumentId(String documentId, File primaryRoot) {
        if (documentId == null || primaryRoot == null) return null;
        int colon = documentId.indexOf(':');
        if (colon < 0) return null;
        String volume = documentId.substring(0, colon);
        if (!"primary".equalsIgnoreCase(volume)) return null;
        String relative = documentId.substring(colon + 1);
        if (relative.isEmpty()) return primaryRoot;
        return new File(primaryRoot, relative);
    }
}
