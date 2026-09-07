package com.atmaca.batch50;

final class StartupResetPolicy {
    static boolean shouldReset(int lastGeneration, int currentGeneration) {
        return lastGeneration != currentGeneration;
    }
    private StartupResetPolicy() {}
}
