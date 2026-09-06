package com.atmaca.batch50;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;

final class BatchQueueDb extends SQLiteOpenHelper {
    static final int PENDING = 0;
    static final int DONE = 1;
    static final int MISSING = 2;

    BatchQueueDb(Context context) { super(context, "atmaca50.db", null, 1); }

    @Override public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE photos(path TEXT PRIMARY KEY NOT NULL, status INTEGER NOT NULL DEFAULT 0, added INTEGER NOT NULL)");
        db.execSQL("CREATE INDEX idx_photos_status_added ON photos(status, added)");
    }

    @Override public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {}

    int scan(File root) {
        if (!root.isDirectory()) return 0;
        SQLiteDatabase db = getWritableDatabase();
        int inserted = 0;
        long order = System.currentTimeMillis() * 1000L;
        ArrayDeque<File> stack = new ArrayDeque<>();
        stack.push(root);
        db.beginTransactionNonExclusive();
        try {
            while (!stack.isEmpty()) {
                File dir = stack.pop();
                File[] files = dir.listFiles();
                if (files == null) continue;
                for (File f : files) {
                    if (f.isDirectory()) stack.push(f);
                    else if (f.isFile() && AppPaths.isImageName(f.getName())) {
                        ContentValues cv = new ContentValues();
                        cv.put("path", f.getAbsolutePath());
                        cv.put("status", PENDING);
                        cv.put("added", order++);
                        if (db.insertWithOnConflict("photos", null, cv, SQLiteDatabase.CONFLICT_IGNORE) != -1) inserted++;
                    }
                }
            }
            db.setTransactionSuccessful();
        } finally { db.endTransaction(); }
        return inserted;
    }

    long countAll() { return countWhere(null, null); }
    long countPending() { return countWhere("status=?", new String[]{String.valueOf(PENDING)}); }
    long countDone() { return countWhere("status=?", new String[]{String.valueOf(DONE)}); }

    private long countWhere(String where, String[] args) {
        try (Cursor c = getReadableDatabase().query("photos", new String[]{"COUNT(*)"}, where, args, null, null, null)) {
            return c.moveToFirst() ? c.getLong(0) : 0;
        }
    }

    List<String> nextPending(int limit) {
        ArrayList<String> out = new ArrayList<>(limit);
        try (Cursor c = getReadableDatabase().query("photos", new String[]{"path"}, "status=?", new String[]{String.valueOf(PENDING)}, null, null, "added ASC", String.valueOf(limit))) {
            while (c.moveToNext()) out.add(c.getString(0));
        }
        return out;
    }

    void mark(String path, int status) {
        ContentValues cv = new ContentValues(); cv.put("status", status);
        getWritableDatabase().update("photos", cv, "path=?", new String[]{path});
    }
}
