package com.akillikisikirpma;

final class OutputLayout {
    private OutputLayout() {}

    static String personFolder(String sourceBase, int personNo) {
        return sourceBase + "_Kisi_" + personNo;
    }

    static String sourceFile(String sourceBase) {
        return sourceBase + ".jpg";
    }

    static String cropFile(String sourceBase, int personNo) {
        return sourceBase + "_kirpma_" + personNo + ".jpg";
    }
}
