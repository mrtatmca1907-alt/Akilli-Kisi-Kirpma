package com.atmaca.videoframefresh;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import androidx.documentfile.provider.DocumentFile;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

public class MainActivity extends Activity {
    private static final int PICK_TREE = 41;
    private final List<Uri> trees = new ArrayList<>();
    private final List<Video> videos = new ArrayList<>();
    private final ExecutorService worker = Executors.newSingleThreadExecutor();

    private ArrayAdapter<Video> adapter;
    private ListView list;
    private TextView status, folders, count;
    private ProgressBar progress;
    private Button scan, start, cancel, selectAll;
    private boolean busy;

    private static final class Video {
        final Uri uri;
        final DocumentFile file;
        final String name;
        Video(DocumentFile f) { file=f; uri=f.getUri(); name=f.getName()==null?"video":f.getName(); }
        @Override public String toString() { return name; }
    }

    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        buildUi();
    }

    private void buildUi() {
        int pad=dp(16);
        LinearLayout root=new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(pad,pad,pad,pad);
        root.setBackgroundColor(0xff101a2b);
        setContentView(root);

        TextView heading=new TextView(this);
        heading.setText("VIDEO KARELERİ • YENİ");
        heading.setTextSize(23);
        heading.setTextColor(0xffffd54f);
        heading.setPadding(0,0,0,dp(8));
        root.addView(heading);

        TextView help=new TextView(this);
        help.setText("Klasör seç → videoları tara → her saniyeden tam çözünürlüklü PNG çıkar. Bir video ancak tüm kareleri kaydedilirse silinir.");
        help.setTextColor(0xffeeeeee);
        help.setTextSize(14);
        root.addView(help);

        scan=button("KLASÖR SEÇ / TARA");
        root.addView(scan);
        folders=new TextView(this);
        folders.setTextColor(0xffdddddd);
        folders.setPadding(0,dp(8),0,dp(8));
        root.addView(folders);

        selectAll=button("TÜM VİDEOLARI SEÇ");
        root.addView(selectAll);
        count=new TextView(this);
        count.setTextColor(0xffffd54f);
        root.addView(count);

        list=new ListView(this);
        adapter=new ArrayAdapter<>(this,android.R.layout.simple_list_item_multiple_choice,videos);
        list.setAdapter(adapter);
        list.setChoiceMode(ListView.CHOICE_MODE_MULTIPLE);
        root.addView(list,new LinearLayout.LayoutParams(-1,0,1));

        progress=new ProgressBar(this,null,android.R.attr.progressBarStyleHorizontal);
        progress.setMax(100);
        root.addView(progress);
        status=new TextView(this);
        status.setTextColor(0xffffffff);
        status.setText("Hazır");
        status.setPadding(0,dp(8),0,dp(8));
        root.addView(status);

        start=button("KARELERİ ÇIKAR VE TAMAMLANAN VİDEOLARI SİL");
        root.addView(start);
        cancel=button("DURDUR");
        cancel.setEnabled(false);
        root.addView(cancel);

        scan.setOnClickListener(v -> chooseTree());
        selectAll.setOnClickListener(v -> {
            for(int i=0;i<videos.size();i++) list.setItemChecked(i,true);
            updateCount();
        });
        list.setOnItemClickListener((p,v,pos,id)->updateCount());
        start.setOnClickListener(v -> begin());
        cancel.setOnClickListener(v -> { Intent stopIntent=new Intent(this, VideoProcessingService.class); stopIntent.setAction(VideoProcessingService.ACTION_STOP); startService(stopIntent); status.setText("Durdurma isteği gönderildi…"); });
        updateFolders();
        updateCount();
    }

    private Button button(String text) {
        Button b=new Button(this); b.setText(text); return b;
    }
    private int dp(int n) { return (int)(n*getResources().getDisplayMetrics().density+0.5f); }

    private void chooseTree() {
        if(busy) return;
        Intent i=new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);
        i.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION|Intent.FLAG_GRANT_WRITE_URI_PERMISSION|
                Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION|Intent.FLAG_GRANT_PREFIX_URI_PERMISSION);
        startActivityForResult(i,PICK_TREE);
    }

    @Override protected void onActivityResult(int request,int result,Intent data) {
        super.onActivityResult(request,result,data);
        if(request!=PICK_TREE||result!=RESULT_OK||data==null||data.getData()==null) return;
        Uri uri=data.getData();
        int flags=data.getFlags()&(Intent.FLAG_GRANT_READ_URI_PERMISSION|Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
        try { getContentResolver().takePersistableUriPermission(uri,flags); }
        catch(Exception e) { status.setText("Klasör izni alınamadı: "+e.getMessage()); return; }
        if(!trees.contains(uri)) trees.add(uri);
        updateFolders();
        scanVideos();
    }

    private void scanVideos() {
        setBusy(true,false);
        status.setText("Videolar taranıyor…");
        worker.execute(() -> {
            Map<String,Video> found=new LinkedHashMap<>();
            for(Uri tree:new ArrayList<>(trees)) walk(DocumentFile.fromTreeUri(this,tree),found);
            runOnUiThread(() -> {
                videos.clear(); videos.addAll(found.values()); adapter.notifyDataSetChanged();
                for(int i=0;i<videos.size();i++) list.setItemChecked(i,true);
                updateCount();
                status.setText(videos.size()+" video bulundu.");
                setBusy(false,false);
            });
        });
    }

    private void walk(DocumentFile node,Map<String,Video> out) {
        if(node==null) return;
        try {
            if(node.isDirectory()) {
                DocumentFile[] children=node.listFiles();
                for(DocumentFile child:children) walk(child,out);
            } else if(node.isFile() && isVideo(node)) {
                out.put(node.getUri().toString(),new Video(node));
            }
        } catch(Exception ignored) { }
    }

    private boolean isVideo(DocumentFile f) {
        String mime=f.getType(), name=f.getName();
        if(mime!=null && mime.toLowerCase(Locale.ROOT).startsWith("video/")) return true;
        if(name==null) return false;
        String n=name.toLowerCase(Locale.ROOT);
        return n.endsWith(".mp4")||n.endsWith(".mkv")||n.endsWith(".mov")||
                n.endsWith(".webm")||n.endsWith(".3gp")||n.endsWith(".avi")||
                n.endsWith(".m4v")||n.endsWith(".ts");
    }

    private void begin() {
        if(busy) return;
        ArrayList<String> selectedUris=new ArrayList<>();
        ArrayList<String> selectedNames=new ArrayList<>();
        for(int i=0;i<videos.size();i++) if(list.isItemChecked(i)) {
            selectedUris.add(videos.get(i).uri.toString());
            selectedNames.add(videos.get(i).name);
        }
        if(selectedUris.isEmpty()) { Toast.makeText(this,"Önce video seç.",Toast.LENGTH_SHORT).show(); return; }
        Intent service=new Intent(this,VideoProcessingService.class);
        service.setAction(VideoProcessingService.ACTION_START);
        service.putStringArrayListExtra(VideoProcessingService.EXTRA_URIS,selectedUris);
        service.putStringArrayListExtra(VideoProcessingService.EXTRA_NAMES,selectedNames);
        if(Build.VERSION.SDK_INT>=26) startForegroundService(service); else startService(service);
        setBusy(true,true);
        progress.setProgress(0);
        status.setText("Arka plan işlemi başlatıldı. Bildirimden takip edebilirsin.");
        Toast.makeText(this,"İşlem arka planda sürüyor.",Toast.LENGTH_LONG).show();
    }

    private boolean savePng(Bitmap bitmap,String folder,long number) {
        String fileName=String.format(Locale.ROOT,"%s_%06d.png",folder,number);
        Uri output=null;
        try {
            ContentValues values=new ContentValues();
            values.put(MediaStore.Images.Media.DISPLAY_NAME,fileName);
            values.put(MediaStore.Images.Media.MIME_TYPE,"image/png");
            values.put(MediaStore.Images.Media.RELATIVE_PATH,Environment.DIRECTORY_PICTURES+"/VideoKareleriYeni/"+folder);
            values.put(MediaStore.Images.Media.IS_PENDING,1);
            output=getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI,values);
            if(output==null) return false;
            boolean ok;
            try(OutputStream stream=getContentResolver().openOutputStream(output,"w")) {
                ok=stream!=null&&bitmap.compress(Bitmap.CompressFormat.PNG,100,stream);
                if(stream!=null) stream.flush();
            }
            if(!ok) { getContentResolver().delete(output,null,null); return false; }
            ContentValues publish=new ContentValues();
            publish.put(MediaStore.Images.Media.IS_PENDING,0);
            if(getContentResolver().update(output,publish,null,null)<=0) {
                getContentResolver().delete(output,null,null); return false;
            }
            return true;
        } catch(Exception e) {
            if(output!=null) try { getContentResolver().delete(output,null,null); } catch(Exception ignored) { }
            return false;
        }
    }

    private String clean(String value) {
        String s=value==null?"video":value;
        StringBuilder cleaned=new StringBuilder();
        for(int i=0;i<s.length();i++) {
            char c=s.charAt(i);
                        boolean bad=c=='/' || c==92 || c==':' || c=='*' || c=='?' || c==34 || c=='<' || c=='>' || c=='|';
            cleaned.append(bad?'_':c);
        }
        s=cleaned.toString().trim();
        return s.isEmpty()?"video":s;
    }

    private void scanVideosAfterRun() {
        // Refresh list after source deletions; keep the chosen folder permissions.
        if(!trees.isEmpty()) scanVideos();
    }

    private void report(String message) { runOnUiThread(() -> status.setText(message)); }
    private void updateFolders() {
        StringBuilder b=new StringBuilder("Seçili klasör: ");
        if(trees.isEmpty()) b.append("yok");
        for(int i=0;i<trees.size();i++) {
            DocumentFile d=DocumentFile.fromTreeUri(this,trees.get(i));
            if(i>0) b.append(", ");
            b.append(d==null?"klasör":d.getName());
        }
        folders.setText(b.toString());
    }
    private void updateCount() {
        int selected=0;
        for(int i=0;i<videos.size();i++) if(list.isItemChecked(i)) selected++;
        count.setText(videos.size()+" video bulundu • "+selected+" seçili");
    }
    private void setBusy(boolean value,boolean processing) {
        busy=value; scan.setEnabled(!value); selectAll.setEnabled(!value);
        start.setEnabled(!value); list.setEnabled(!value); cancel.setEnabled(value&&processing);
    }
    @Override protected void onDestroy() {
        worker.shutdownNow(); super.onDestroy();
    }
}
