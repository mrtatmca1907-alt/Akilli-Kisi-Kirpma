package com.akillikisikirpma;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.PowerManager;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

public class AutoMediaJobService extends JobService {
    private final AtomicBoolean stopRequested = new AtomicBoolean(false);
    private ExecutorService executor;
    private PowerManager.WakeLock wakeLock;

    @Override public boolean onStartJob(JobParameters params) {
        stopRequested.set(false);
        executor = Executors.newSingleThreadExecutor();
        acquireWakeLock();
        executor.submit(() -> {
            boolean idle = false;
            try {
                AutoMediaProcessor processor = new AutoMediaProcessor(this, new AutoMediaProcessor.Control() {
                    @Override public boolean shouldStop() { return stopRequested.get(); }
                    @Override public void onProgress(String text) { }
                });
                idle = processor.runUntilIdle();
            } finally {
                releaseWakeLock();
                AutoMediaScheduler.scheduleWatcher(this);
                jobFinished(params, !idle || stopRequested.get());
            }
        });
        return true;
    }

    @Override public boolean onStopJob(JobParameters params) {
        stopRequested.set(true);
        releaseWakeLock();
        if (executor != null) executor.shutdownNow();
        return true;
    }

    private void acquireWakeLock() {
        try {
            PowerManager pm = (PowerManager) getSystemService(POWER_SERVICE);
            wakeLock = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "ATMACA:AutoMediaJob");
            wakeLock.setReferenceCounted(false);
            wakeLock.acquire();
        } catch (Throwable ignored) {}
    }

    private void releaseWakeLock() {
        try { if (wakeLock != null && wakeLock.isHeld()) wakeLock.release(); } catch (Throwable ignored) {}
    }
}
