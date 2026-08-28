package com.akillikisikirpma;

import android.Manifest;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import androidx.documentfile.provider.DocumentFile;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

public class MainActivity extends Activity {
    private static final int REQ_PHOTOS = 1001;
    private static final int REQ_FOLDER = 1002;
    private static final int REQ_WRITE = 1003;

    private final List<Uri> selectedImages = new ArrayList<>();
    private final List<Uri> selectedFolders = new ArrayList<>();
    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private final AtomicBoolean stopRequested = new AtomicBoolean(false);

    private Button btnPhotos, btnFolder, btnClear, btnStart, btnStop;
    private TextView txtSelection, txtStatus, txtLog;
    private ProgressBar progress;
    private volatile boolean running;

    @Override protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        btnPhotos=findViewById(R.id.btnPhotos); btnFolder=findViewById(R.id.btnFolder);
        btnClear=findViewById(R.id.btnClear); btnStart=findViewById(R.id.btnStart); btnStop=findViewById(R.id.btnStop);
        txtSelection=findViewById(R.id.txtSelection); txtStatus=findViewById(R.id.txtStatus); txtLog=findViewById(R.id.txtLog);
        progress=findViewById(R.id.progress);
        btnPhotos.setOnClickListener(v->choosePhotos()); btnFolder.setOnClickListener(v->chooseFolder());
        btnClear.setOnClickListener(v->clearSelections()); btnStart.setOnClickListener(v->requestStart());
        btnStop.setOnClickListener(v->{ stopRequested.set(true); txtStatus.setText("Durdurma isteniyor…"); });
        StatusStore.write(this,false,0,0,0,0,0,"Hazır");
        setRunning(false); updateSelectionText();
    }

    private void choosePhotos(){
        Intent i=new Intent(Intent.ACTION_OPEN_DOCUMENT); i.addCategory(Intent.CATEGORY_OPENABLE); i.setType("image/*");
        i.putExtra(Intent.EXTRA_ALLOW_MULTIPLE,true); i.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION|Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION);
        startActivityForResult(i,REQ_PHOTOS);
    }
    private void chooseFolder(){
        Intent i=new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE); i.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION|Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION|Intent.FLAG_GRANT_PREFIX_URI_PERMISSION);
        startActivityForResult(i,REQ_FOLDER);
    }
    @Override protected void onActivityResult(int requestCode,int resultCode,Intent data){
        super.onActivityResult(requestCode,resultCode,data); if(resultCode!=RESULT_OK||data==null)return;
        if(requestCode==REQ_PHOTOS){
            if(data.getClipData()!=null){ for(int n=0;n<data.getClipData().getItemCount();n++){ Uri u=data.getClipData().getItemAt(n).getUri(); persistRead(u,data.getFlags()); if(!selectedImages.contains(u))selectedImages.add(u); } }
            else if(data.getData()!=null){ Uri u=data.getData(); persistRead(u,data.getFlags()); if(!selectedImages.contains(u))selectedImages.add(u); }
            updateSelectionText();
        } else if(requestCode==REQ_FOLDER&&data.getData()!=null){ Uri u=data.getData(); persistRead(u,data.getFlags()); if(!selectedFolders.contains(u))selectedFolders.add(u); updateSelectionText(); }
    }
    private void persistRead(Uri u,int flags){ try{ getContentResolver().takePersistableUriPermission(u,flags&Intent.FLAG_GRANT_READ_URI_PERMISSION); }catch(Throwable ignored){} }
    private void clearSelections(){ if(running)return; selectedImages.clear(); selectedFolders.clear(); progress.setProgress(0); txtStatus.setText("Hazır"); txtLog.setText("İşlenen 0 • Algılanan 0 • Kaydedilen 0 • Atlanan 0 • Hata 0"); updateSelectionText(); }
    private void updateSelectionText(){ String s="Seçili fotoğraf: "+selectedImages.size()+"\nEklenen klasör: "+selectedFolders.size(); if(selectedImages.isEmpty()&&selectedFolders.isEmpty())s+="\nHenüz seçim yok"; txtSelection.setText(s); }
    private void requestStart(){
        if(selectedImages.isEmpty()&&selectedFolders.isEmpty()){ Toast.makeText(this,"Önce fotoğraf veya klasör seç",Toast.LENGTH_SHORT).show(); return; }
        if(Build.VERSION.SDK_INT<=Build.VERSION_CODES.P&&checkSelfPermission(Manifest.permission.WRITE_EXTERNAL_STORAGE)!=PackageManager.PERMISSION_GRANTED){ requestPermissions(new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE},REQ_WRITE); return; }
        startProcessing();
    }
    @Override public void onRequestPermissionsResult(int r,String[] p,int[] g){ super.onRequestPermissionsResult(r,p,g); if(r==REQ_WRITE&&g.length>0&&g[0]==PackageManager.PERMISSION_GRANTED)startProcessing(); }

    private void startProcessing(){
        if(running)return; running=true; stopRequested.set(false); setRunning(true); progress.setIndeterminate(true); txtStatus.setText("Klasör taranıyor…");
        executor.submit(()->{
            int processed=0,detected=0,saved=0,skipped=0,failed=0;
            try{
                Map<String,Uri> work=new LinkedHashMap<>(); for(Uri u:selectedImages)work.put(u.toString(),u);
                for(Uri folder:selectedFolders){ if(stopRequested.get())break; DocumentFile root=DocumentFile.fromTreeUri(this,folder); collectImages(root,work); }
                if(work.isEmpty()){ final int f=failed; runOnUiThread(()->finishUi("Seçilen yerde fotoğraf bulunamadı",0,0,0,0,f)); return; }
                int total=work.size();
                try(PersonCropEngine engine=new PersonCropEngine(this)){
                    for(Uri u:work.values()){
                        if(stopRequested.get())break;
                        final int current=processed+1; runOnUiThread(()->txtStatus.setText(current+" / "+total+" işleniyor…"));
                        PersonCropEngine.ProcessResult r=engine.process(u); processed++; detected+=r.detected; saved+=r.saved; skipped+=r.skipped; failed+=r.failed;
                        final int fp=processed,fd=detected,fs=saved,fsk=skipped,ff=failed;
                        runOnUiThread(()->txtLog.setText("İşlenen "+fp+" • Algılanan "+fd+" • Kaydedilen "+fs+" • Atlanan "+fsk+" • Hata "+ff));
                    }
                }
                final int fp=processed,fd=detected,fs=saved,fsk=skipped,ff=failed; final String msg=stopRequested.get()?"Durduruldu":"Tamamlandı";
                runOnUiThread(()->finishUi(msg,fp,fd,fs,fsk,ff));
            }catch(Throwable t){ final int fp=processed,fd=detected,fs=saved,fsk=skipped,ff=failed+1; final String msg="Hata: "+(t.getMessage()==null?t.getClass().getSimpleName():t.getMessage()); runOnUiThread(()->finishUi(msg,fp,fd,fs,fsk,ff)); }
        });
    }
    private void collectImages(DocumentFile dir,Map<String,Uri> out){
        if(dir==null||stopRequested.get())return; DocumentFile[] files; try{files=dir.listFiles();}catch(Throwable t){return;}
        for(DocumentFile f:files){ if(stopRequested.get())return; if(f.isDirectory())collectImages(f,out); else { String type=f.getType(); String name=f.getName(); if((type!=null&&type.startsWith("image/"))||isImageName(name))out.put(f.getUri().toString(),f.getUri()); } }
    }
    private boolean isImageName(String n){ if(n==null)return false; String s=n.toLowerCase(); return s.endsWith(".jpg")||s.endsWith(".jpeg")||s.endsWith(".png")||s.endsWith(".webp")||s.endsWith(".bmp")||s.endsWith(".heic")||s.endsWith(".heif"); }
    private void finishUi(String msg,int p,int d,int s,int sk,int f){ running=false; progress.setIndeterminate(false); progress.setProgress(msg.equals("Tamamlandı")?100:0); txtStatus.setText(msg); txtLog.setText("İşlenen "+p+" • Algılanan "+d+" • Kaydedilen "+s+" • Atlanan "+sk+" • Hata "+f); setRunning(false); }
    private void setRunning(boolean r){ btnPhotos.setEnabled(!r);btnFolder.setEnabled(!r);btnClear.setEnabled(!r);btnStart.setEnabled(!r);btnStop.setEnabled(r); }
    @Override protected void onDestroy(){ stopRequested.set(true); executor.shutdownNow(); super.onDestroy(); }
}
