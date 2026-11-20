package com.atmaca.videoframefresh;

import android.app.*;
import android.content.*;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.*;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.content.ContentValues;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

public class VideoProcessingService extends Service {
    static final String ACTION_START="com.atmaca.videoframefresh.START";
    static final String ACTION_STOP="com.atmaca.videoframefresh.STOP";
    static final String EXTRA_URIS="uris", EXTRA_NAMES="names";
    private static final String CHANNEL="video_frames";
    private final AtomicBoolean stop=new AtomicBoolean(false);
    private Thread task;
    @Override public void onCreate() {
        super.onCreate();
        if(Build.VERSION.SDK_INT>=26) {
            NotificationChannel c=new NotificationChannel(CHANNEL,"Video kare çıkarma",NotificationManager.IMPORTANCE_LOW);
            getSystemService(NotificationManager.class).createNotificationChannel(c);
        }
    }
    @Override public int onStartCommand(Intent in,int flags,int id) {
        if(in!=null && ACTION_STOP.equals(in.getAction())) { stop.set(true); notifyText("Durduruluyor…",0,true); return START_NOT_STICKY; }
        if(in==null || !ACTION_START.equals(in.getAction()) || task!=null) { stopSelf(id); return START_NOT_STICKY; }
        ArrayList<String> uris=in.getStringArrayListExtra(EXTRA_URIS);
        ArrayList<String> names=in.getStringArrayListExtra(EXTRA_NAMES);
        if(uris==null || names==null || uris.isEmpty() || uris.size()!=names.size()) { stopSelf(id); return START_NOT_STICKY; }
        stop.set(false);
        startForeground(7301,buildNotification("İşlem başlıyor…",0,true));
        task=new Thread(()->runBatch(uris,names),"frame-extractor");
        task.start();
        return START_NOT_STICKY;
    }
    private Notification buildNotification(String text,int p,boolean ongoing) {
        Notification.Builder b=Build.VERSION.SDK_INT>=26?new Notification.Builder(this,CHANNEL):new Notification.Builder(this);
        return b.setSmallIcon(android.R.drawable.stat_sys_download).setContentTitle("Video Kareleri Yeni")
            .setContentText(text).setProgress(100,Math.max(0,Math.min(100,p)),false).setOngoing(ongoing).build();
    }
    private void notifyText(String text,int p,boolean ongoing) {
        ((NotificationManager)getSystemService(NOTIFICATION_SERVICE)).notify(7301,buildNotification(text,p,ongoing));
    }
    private void runBatch(ArrayList<String> uris,ArrayList<String> names) {
        int saved=0,deleted=0,errors=0,total=uris.size();
        for(int i=0;i<total && !stop.get();i++) {
            Uri uri=Uri.parse(uris.get(i)); String name=names.get(i);
            MediaMetadataRetriever r=new MediaMetadataRetriever(); long expected=0,done=0; boolean bad=false;
            try {
                r.setDataSource(this,uri);
                String d=r.extractMetadata(MediaMetadataRetriever.METADATA_KEY_DURATION);
                if(d==null) throw new Exception("duration");
                expected=(Long.parseLong(d)+999)/1000;
                String folder=safe(name); int dot=folder.lastIndexOf('.'); if(dot>0) folder=folder.substring(0,dot);
                for(long sec=0;sec<expected && !stop.get();sec++) {
                    Bitmap frame=null;
                    try {
                        // En yakın zaman damgasındaki kare; tam çözünürlük ve kayıpsız PNG.
                        frame=r.getFrameAtTime(sec*1000000L,MediaMetadataRetriever.OPTION_CLOSEST);
                        if(frame==null || !writePng(frame,folder,sec+1)) throw new Exception("frame");
                        done++; saved++;
                    } catch(Exception e) { bad=true; errors++; }
                    finally { if(frame!=null && !frame.isRecycled()) frame.recycle(); }
                    if(sec%3==0 || sec+1==expected) {
                        int p=(int)(((i+(double)(sec+1)/expected)*100)/total);
                        notifyText(name+" • "+(sec+1)+"/"+expected+" • "+saved+" kare",p,true);
                    }
                    if(bad) break;
                }
            } catch(Exception e) { bad=true; errors++; }
            finally { try { r.release(); } catch(Exception ignored) {} }
            if(!stop.get() && !bad && expected>0 && done==expected) {
                try { if(DocumentsContract.deleteDocument(getContentResolver(),uri)) deleted++; else errors++; }
                catch(Exception e) { errors++; }
            }
        }
        String summary=(stop.get()?"Durduruldu":"Tamamlandı")+" • "+saved+" PNG • "+deleted+" video silindi • "+errors+" hata";
        notifyText(summary,stop.get()?0:100,false);
        stopForeground(STOP_FOREGROUND_DETACH);
        stopSelf();
    }
    private boolean writePng(Bitmap bitmap,String folder,long n) {
        Uri out=null;
        try {
            ContentValues v=new ContentValues();
            v.put(MediaStore.Images.Media.DISPLAY_NAME,String.format(Locale.ROOT,"%s_%06d.png",folder,n));
            v.put(MediaStore.Images.Media.MIME_TYPE,"image/png");
            v.put(MediaStore.Images.Media.RELATIVE_PATH,Environment.DIRECTORY_PICTURES+"/VideoKareleriYeni/"+folder);
            v.put(MediaStore.Images.Media.IS_PENDING,1);
            out=getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI,v);
            if(out==null) return false;
            boolean ok;
            try(OutputStream s=getContentResolver().openOutputStream(out,"w")) { ok=s!=null && bitmap.compress(Bitmap.CompressFormat.PNG,100,s); if(s!=null)s.flush(); }
            if(!ok) { getContentResolver().delete(out,null,null); return false; }
            ContentValues publish=new ContentValues(); publish.put(MediaStore.Images.Media.IS_PENDING,0);
            if(getContentResolver().update(out,publish,null,null)<=0) { getContentResolver().delete(out,null,null); return false; }
            return true;
        } catch(Exception e) { if(out!=null) try { getContentResolver().delete(out,null,null); } catch(Exception ignored) {} return false; }
    }
    private String safe(String s) {
        if(s==null)s="video"; StringBuilder b=new StringBuilder();
        for(int i=0;i<s.length();i++){ char c=s.charAt(i); b.append((c=='/'||c==92||c==':'||c=='*'||c=='?'||c==34||c=='<'||c=='>'||c=='|')?'_':c); }
        String v=b.toString().trim(); return v.isEmpty()?"video":v;
    }
    @Override public void onDestroy() { stop.set(true); super.onDestroy(); }
    @Override public IBinder onBind(Intent i) { return null; }
}