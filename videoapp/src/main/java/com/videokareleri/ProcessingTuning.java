package com.videokareleri;

final class ProcessingTuning {
    private ProcessingTuning() {}

    static int workerCount(int videoCount, int availableProcessors) {
        if (videoCount <= 0) return 0;
        if (videoCount == 1 || availableProcessors < 4) return 1;
        return Math.min(2, videoCount);
    }

    static boolean shouldUpdateUi(long frameNumber, long totalFrames) {
        return frameNumber <= 1 || frameNumber >= totalFrames || frameNumber % 5L == 0L;
    }
}
