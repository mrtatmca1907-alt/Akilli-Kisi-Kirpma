package com.gorselavcisi;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import java.util.ArrayList;
import java.util.List;

final class HunterDb extends SQLiteOpenHelper {
    static final class Row {
        long id;
        String url;
        String kind;
        String source;
        String status;
        String filename;
        String hash;
    }

    HunterDb(Context context) {
        super(context, "gorsel_avcisi.db", null, 1);
    }

    @Override public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE meta(k TEXT PRIMARY KEY, v TEXT)");
        db.execSQL("CREATE TABLE media(" +
                "id INTEGER PRIMARY KEY AUTOINCREMENT," +
                "url TEXT NOT NULL UNIQUE," +
                "kind TEXT NOT NULL," +
                "source TEXT," +
                "status TEXT NOT NULL DEFAULT 'pending'," +
                "filename TEXT," +
                "hash TEXT)");
        db.execSQL("CREATE INDEX idx_media_status ON media(status)");
        db.execSQL("CREATE INDEX idx_media_hash ON media(hash)");
        db.execSQL("CREATE INDEX idx_media_kind ON media(kind)");
    }

    @Override public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {}

    synchronized boolean prepareQuery(String query) {
        SQLiteDatabase db = getWritableDatabase();
        String old = null;
        try (Cursor c = db.rawQuery("SELECT v FROM meta WHERE k='query'", null)) {
            if (c.moveToFirst()) old = c.getString(0);
        }
        if (old == null || !old.equalsIgnoreCase(query.trim())) {
            db.beginTransaction();
            try {
                db.delete("media", null, null);
                ContentValues cv = new ContentValues();
                cv.put("k", "query");
                cv.put("v", query.trim());
                db.insertWithOnConflict("meta", null, cv, SQLiteDatabase.CONFLICT_REPLACE);
                db.setTransactionSuccessful();
            } finally {
                db.endTransaction();
            }
            return false;
        }
        return true;
    }

    synchronized boolean add(String url, String kind, String source) {
        if (url == null || url.trim().isEmpty()) return false;
        ContentValues cv = new ContentValues();
        cv.put("url", url.trim());
        cv.put("kind", kind == null ? "image" : kind);
        cv.put("source", source == null ? "" : source);
        long id = getWritableDatabase().insertWithOnConflict(
                "media", null, cv, SQLiteDatabase.CONFLICT_IGNORE);
        return id != -1;
    }

    synchronized void status(String url, String status, String filename, String hash) {
        ContentValues cv = new ContentValues();
        cv.put("status", status);
        if (filename != null) cv.put("filename", filename);
        if (hash != null) cv.put("hash", hash);
        getWritableDatabase().update("media", cv, "url=?", new String[]{url});
    }

    synchronized boolean hashExists(String hash, String excludingUrl) {
        if (hash == null || hash.isEmpty()) return false;
        try (Cursor c = getReadableDatabase().rawQuery(
                "SELECT 1 FROM media WHERE hash=? AND status='saved' AND url<>? LIMIT 1",
                new String[]{hash, excludingUrl == null ? "" : excludingUrl})) {
            return c.moveToFirst();
        }
    }

    synchronized List<Row> pending(int limit) {
        ArrayList<Row> rows = new ArrayList<>();
        try (Cursor c = getReadableDatabase().rawQuery(
                "SELECT id,url,kind,source,status,filename,hash FROM media WHERE status='pending' ORDER BY id LIMIT ?",
                new String[]{String.valueOf(limit)})) {
            while (c.moveToNext()) {
                Row r = new Row();
                r.id = c.getLong(0);
                r.url = c.getString(1);
                r.kind = c.getString(2);
                r.source = c.getString(3);
                r.status = c.getString(4);
                r.filename = c.getString(5);
                r.hash = c.getString(6);
                rows.add(r);
            }
        }
        return rows;
    }

    synchronized int[] counts() {
        int images = scalar("SELECT COUNT(*) FROM media WHERE kind='image'");
        int videos = scalar("SELECT COUNT(*) FROM media WHERE kind IN ('video','video_link')");
        int saved = scalar("SELECT COUNT(*) FROM media WHERE status='saved'");
        int dup = scalar("SELECT COUNT(*) FROM media WHERE status='duplicate'");
        int errors = scalar("SELECT COUNT(*) FROM media WHERE status IN ('error','skipped')");
        return new int[]{images, videos, saved, dup, errors};
    }

    private int scalar(String sql) {
        try (Cursor c = getReadableDatabase().rawQuery(sql, null)) {
            return c.moveToFirst() ? c.getInt(0) : 0;
        }
    }

    synchronized List<Row> allVideoLinks() {
        ArrayList<Row> rows = new ArrayList<>();
        try (Cursor c = getReadableDatabase().rawQuery(
                "SELECT id,url,kind,source,status,filename,hash FROM media WHERE kind IN ('video','video_link') ORDER BY id",
                null)) {
            while (c.moveToNext()) {
                Row r = new Row();
                r.id = c.getLong(0);
                r.url = c.getString(1);
                r.kind = c.getString(2);
                r.source = c.getString(3);
                r.status = c.getString(4);
                r.filename = c.getString(5);
                r.hash = c.getString(6);
                rows.add(r);
            }
        }
        return rows;
    }

    synchronized List<Row> allRows() {
        ArrayList<Row> rows = new ArrayList<>();
        try (Cursor c = getReadableDatabase().rawQuery(
                "SELECT id,url,kind,source,status,filename,hash FROM media ORDER BY id", null)) {
            while (c.moveToNext()) {
                Row r = new Row();
                r.id = c.getLong(0);
                r.url = c.getString(1);
                r.kind = c.getString(2);
                r.source = c.getString(3);
                r.status = c.getString(4);
                r.filename = c.getString(5);
                r.hash = c.getString(6);
                rows.add(r);
            }
        }
        return rows;
    }
}
