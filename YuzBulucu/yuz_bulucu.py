import os, sys, cv2, sqlite3, threading, queue, time
from pathlib import Path
import tkinter as tk
from tkinter import ttk, filedialog, messagebox

IMAGE_EXTS = {".jpg", ".jpeg", ".png", ".bmp", ".webp", ".tif", ".tiff"}
ROOT = Path(getattr(sys, "_MEIPASS", Path(__file__).resolve().parent))
MODELS = ROOT / "models"
DET = MODELS / "face_detection_yunet_2023mar.onnx"
REC = MODELS / "face_recognition_sface_2021dec.onnx"
DATA = Path(os.getenv("LOCALAPPDATA", str(Path.home()))) / "YuzBulucu"
DATA.mkdir(parents=True, exist_ok=True)
DBFILE = DATA / "index.sqlite3"

class Engine:
    def __init__(self):
        self.det = cv2.FaceDetectorYN.create(str(DET), "", (320,320), 0.80, 0.3, 5000)
        self.rec = cv2.FaceRecognizerSF.create(str(REC), "")
    def encode(self, path):
        img = cv2.imread(str(path))
        if img is None: return None
        h,w = img.shape[:2]
        self.det.setInputSize((w,h))
        _, faces = self.det.detect(img)
        if faces is None or len(faces)==0: return None
        face = max(faces, key=lambda f: float(f[2]*f[3]))
        crop = self.rec.alignCrop(img, face)
        vec = self.rec.feature(crop).flatten().astype("float32")
        import numpy as np
        n = float(np.linalg.norm(vec))
        return vec/n if n else None

class App:
    def __init__(self, root):
        self.root=root; root.title("Yüz Bulucu"); root.geometry("900x650"); root.minsize(760,520)
        self.q=queue.Queue(); self.stop_flag=threading.Event()
        self.ref=tk.StringVar(); self.folder=tk.StringVar(); self.threshold=tk.DoubleVar(value=0.42)
        self.db=sqlite3.connect(DBFILE, check_same_thread=False)
        self.db.execute("CREATE TABLE IF NOT EXISTS photos(path TEXT PRIMARY KEY, mtime REAL, size INTEGER, emb BLOB)")
        self.db.commit(); self.lock=threading.Lock()
        self.build(); root.after(150,self.poll); root.protocol("WM_DELETE_WINDOW",self.close)
    def build(self):
        f=ttk.Frame(self.root,padding=14); f.pack(fill="both",expand=True)
        ttk.Label(f,text="YÜZ BULUCU",font=("Segoe UI",20,"bold")).pack(anchor="w")
        ttk.Label(f,text="Çevrimdışı yüz benzerliği taraması • Windows 10 / 64 bit").pack(anchor="w",pady=(0,12))
        for label,var,cmd in [("Referans fotoğrafı:",self.ref,self.pick_ref),("Aranacak klasör:",self.folder,self.pick_dir)]:
            r=ttk.Frame(f); r.pack(fill="x",pady=4); ttk.Label(r,text=label,width=20).pack(side="left")
            ttk.Entry(r,textvariable=var).pack(side="left",fill="x",expand=True,padx=6); ttk.Button(r,text="Seç",command=cmd).pack(side="left")
        r=ttk.Frame(f); r.pack(fill="x",pady=10)
        ttk.Label(r,text="Benzerlik eşiği").pack(side="left")
        ttk.Scale(r,from_=0.25,to=0.65,variable=self.threshold,orient="horizontal",length=250).pack(side="left",padx=8)
        self.val=ttk.Label(r,text="0.42"); self.val.pack(side="left")
        self.threshold.trace_add("write",lambda *_:self.val.config(text=f"{self.threshold.get():.2f}"))
        r=ttk.Frame(f); r.pack(fill="x",pady=6)
        self.go=ttk.Button(r,text="Taramayı başlat",command=self.start); self.go.pack(side="left")
        self.stop=ttk.Button(r,text="Durdur",command=self.stop_scan,state="disabled"); self.stop.pack(side="left",padx=8)
        self.bar=ttk.Progressbar(f,mode="determinate"); self.bar.pack(fill="x",pady=5)
        self.status=tk.StringVar(value="Referans fotoğrafı ve klasörü seçin.")
        ttk.Label(f,textvariable=self.status).pack(anchor="w",pady=5)
        self.list=ttk.Treeview(f,columns=("score","path"),show="headings")
        self.list.heading("score",text="Benzerlik"); self.list.heading("path",text="Fotoğraf yolu")
        self.list.column("score",width=100,anchor="center"); self.list.column("path",width=700)
        self.list.pack(fill="both",expand=True,pady=5); self.list.bind("<Double-1>",self.open_item)
        ttk.Label(f,text="Puan, yüz benzerliği tahminidir; kesin kimlik doğrulaması değildir.",foreground="#666").pack(anchor="w")
    def pick_ref(self):
        p=filedialog.askopenfilename(filetypes=[("Fotoğraflar","*.jpg *.jpeg *.png *.bmp *.webp *.tif *.tiff")])
        if p:self.ref.set(p)
    def pick_dir(self):
        p=filedialog.askdirectory()
        if p:self.folder.set(p)
    def start(self):
        if not Path(self.ref.get()).is_file(): messagebox.showwarning("Eksik bilgi","Referans fotoğrafı seçin."); return
        if not Path(self.folder.get()).is_dir(): messagebox.showwarning("Eksik bilgi","Aranacak klasörü seçin."); return
        self.stop_flag.clear(); self.list.delete(*self.list.get_children())
        self.go.config(state="disabled"); self.stop.config(state="normal")
        threading.Thread(target=self.scan,daemon=True).start()
    def stop_scan(self):
        self.stop_flag.set(); self.status.set("Durdurma isteği gönderildi.")
    def scan(self):
        try:
            import numpy as np
            engine=Engine(); ref=engine.encode(self.ref.get())
            if ref is None: self.q.put(("error","Referans fotoğrafında yüz algılanamadı.")); return
            paths=[]
            for base,dirs,names in os.walk(self.folder.get()):
                dirs[:]=[d for d in dirs if d.lower() not in {"$recycle.bin","system volume information"}]
                for n in names:
                    if Path(n).suffix.lower() in IMAGE_EXTS: paths.append(Path(base)/n)
            self.q.put(("total",len(paths))); found=[]
            for i,p in enumerate(paths,1):
                if self.stop_flag.is_set(): break
                try:
                    st=p.stat()
                    with self.lock:
                        row=self.db.execute("SELECT emb FROM photos WHERE path=? AND mtime=? AND size=?",(str(p),st.st_mtime,st.st_size)).fetchone()
                    emb=np.frombuffer(row[0],dtype="float32") if row and row[0] else None
                    if row is None:
                        emb=engine.encode(p)
                        with self.lock:
                            self.db.execute("INSERT OR REPLACE INTO photos VALUES(?,?,?,?)",(str(p),st.st_mtime,st.st_size,emb.tobytes() if emb is not None else None)); self.db.commit()
                    if emb is not None:
                        score=float(np.dot(ref,emb)/(np.linalg.norm(ref)*np.linalg.norm(emb)+1e-9))
                        if score>=self.threshold.get(): found.append((score,str(p)))
                except Exception: pass
                if i%10==0 or i==len(paths): self.q.put(("progress",i,len(paths),len(found)))
            found.sort(reverse=True); self.q.put(("done",found,self.stop_flag.is_set()))
        except Exception as e:self.q.put(("error",str(e)))
    def poll(self):
        try:
            while True:
                x=self.q.get_nowait()
                if x[0]=="total": self.bar["maximum"]=max(1,x[1]); self.bar["value"]=0; self.status.set(f"{x[1]:,} fotoğraf bulundu.")
                elif x[0]=="progress":
                    _,i,n,c=x; self.bar["maximum"]=max(1,n); self.bar["value"]=i; self.status.set(f"Taranıyor {i:,}/{n:,} • Eşleşme {c:,}")
                elif x[0]=="done":
                    _,items,stopped=x
                    for score,path in items:self.list.insert("","end",values=(f"{score*100:.1f}%",path))
                    self.status.set(("Durduruldu" if stopped else "Tamamlandı")+f" • {len(items):,} eşleşme")
                    self.go.config(state="normal"); self.stop.config(state="disabled")
                elif x[0]=="error":
                    messagebox.showerror("Hata",x[1]); self.go.config(state="normal"); self.stop.config(state="disabled")
        except queue.Empty:pass
        self.root.after(150,self.poll)
    def open_item(self,_=None):
        sel=self.list.selection()
        if sel:
            p=self.list.item(sel[0],"values")[1]
            if os.path.isfile(p):os.startfile(p)
    def close(self):
        self.stop_flag.set()
        with self.lock:self.db.close()
        self.root.destroy()

if __name__=="__main__":
    r=tk.Tk(); App(r); r.mainloop()
