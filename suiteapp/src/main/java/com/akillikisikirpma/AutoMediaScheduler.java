package com.akillikisikirpma;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.provider.MediaStore;

final class AutoMediaScheduler {
    static final int WATCH_JOB_ID = 190701;
    static final int RUN_NOW_JOB_ID = 190702;

    private AutoMediaScheduler() {}

    static void scheduleWatcher(Context context) {
        JobScheduler scheduler = context.getSystemService(JobScheduler.class);
        if (scheduler == null) return;
        JobInfo job = new JobInfo.Builder(WATCH_JOB_ID, new ComponentName(context, AutoMediaJobService.class))
                .addTriggerContentUri(new JobInfo.TriggerContentUri(MediaStore.Images.Media.EXTERNAL_CONTENT_URI,
                        JobInfo.TriggerContentUri.FLAG_NOTIFY_FOR_DESCENDANTS))
                .addTriggerContentUri(new JobInfo.TriggerContentUri(MediaStore.Video.Media.EXTERNAL_CONTENT_URI,
                        JobInfo.TriggerContentUri.FLAG_NOTIFY_FOR_DESCENDANTS))
                .setTriggerContentUpdateDelay(1200L)
                .setTriggerContentMaxDelay(4000L)
                .build();
        scheduler.schedule(job);
    }

    static void scheduleRunNow(Context context) {
        JobScheduler scheduler = context.getSystemService(JobScheduler.class);
        if (scheduler == null) return;
        JobInfo job = new JobInfo.Builder(RUN_NOW_JOB_ID, new ComponentName(context, AutoMediaJobService.class))
                .setMinimumLatency(0L)
                .setOverrideDeadline(1000L)
                .build();
        scheduler.schedule(job);
    }
}
