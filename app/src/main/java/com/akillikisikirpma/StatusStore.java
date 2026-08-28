package com.akillikisikirpma;

import android.content.Context;
import android.content.SharedPreferences;

final class StatusStore {
    private static final String PREF = "screenshot_status";

    static final class Snapshot {
        final boolean running;
        final int processed;
        final int detected;
        final int saved;
        final int skipped;
        final int failed;
        final String status;

        Snapshot(boolean running, int processed, int detected, int saved, int skipped, int failed, String status) {
            this.running = running;
            this.processed = processed;
            this.detected = detected;
            this.saved = saved;
            this.skipped = skipped;
            this.failed = failed;
            this.status = status;
        }
    }

    private StatusStore() {}

    static void write(Context context, boolean running, int processed, int detected, int saved, int skipped, int failed, String status) {
        context.getSharedPreferences(PREF, Context.MODE_PRIVATE).edit()
                .putBoolean("running", running)
                .putInt("processed", processed)
                .putInt("detected", detected)
                .putInt("saved", saved)
                .putInt("skipped", skipped)
                .putInt("failed", failed)
                .putString("status", status)
                .apply();
    }

    static Snapshot read(Context context) {
        SharedPreferences p = context.getSharedPreferences(PREF, Context.MODE_PRIVATE);
        return new Snapshot(
                p.getBoolean("running", false),
                p.getInt("processed", 0),
                p.getInt("detected", 0),
                p.getInt("saved", 0),
                p.getInt("skipped", 0),
                p.getInt("failed", 0),
                p.getString("status", "Hazır")
        );
    }
}
