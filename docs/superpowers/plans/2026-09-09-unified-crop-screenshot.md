# ATMACA Birleşik Kişi Kırpma Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Manuel kişi kırpma ve otomatik Screenshots işleme özelliklerini tek, hızlı ve kaldığı yerden devam eden Android APK'da birleştirmek.

**Architecture:** Mevcut kişi algılama/kırpma motoru tek çekirdek olarak korunur. Manuel seçim koordinatörü ve foreground screenshot servisi aynı motoru ve kalıcı iş deposunu kullanır; çıktı yazımı ortak ve kaynak dosyaya dokunmayan bir bileşendir.

**Tech Stack:** Android/Kotlin, mevcut kişi algılama modeli, foreground service, kalıcı yerel durum deposu, Android depolama API'leri.

**Spec:** `docs/superpowers/specs/2026-09-09-unified-crop-screenshot-design.md`

## Global Constraints
- Tek ortak kişi algılama/kırpma motoru kullanılacak.
- Kaynak fotoğraf silinmeyecek veya üzerine yazılmayacak.
- Tek dosya hatası kuyruğu durdurmayacak.
- Tamamlanan işler tekrar işlenmeyecek.
- UI thread üzerinde ağır decode/model çalıştırılmayacak.
- Varsayılan olarak aynı anda tek aktif kırpma işi çalışacak.

---

### Task 1: Ortak iş modeli ve kalıcı durum
**Files:** mevcut proje yapısına göre `CropJob`, `CropJobStore` ve testleri.
**Interfaces:** `enqueue(uri, sourceMode)`, `nextPending()`, `markRunning(id)`, `markCompleted(id, outputs)`, `markFailed(id, reason)`.
- [ ] Aynı URI'nin ikinci kez kuyruğa eklenmediğini kanıtlayan failing test yaz.
- [ ] Testi çalıştır ve FAIL olduğunu doğrula.
- [ ] Kalıcı iş modelini ve durum geçişlerini uygula.
- [ ] Testi çalıştır ve PASS olduğunu doğrula.
- [ ] Commit: `feat: add persistent crop job queue`.

### Task 2: Tek ortak PersonCropEngine
**Files:** mevcut kişi algılama/kırpma motoru ve motor testleri.
**Interfaces:** `crop(sourceUri): CropResult`.
- [ ] Bir görselde birden fazla algılanan kişinin ayrı çıktı adayları verdiğini test et.
- [ ] Testin mevcut yapıda FAIL/eksik davranışı gösterdiğini doğrula.
- [ ] Mevcut algılama motorunu tek yeniden kullanılabilir `PersonCropEngine` arayüzünün arkasına al.
- [ ] Testleri çalıştır; PASS doğrula.
- [ ] Commit: `refactor: share person crop engine across modes`.

### Task 3: Güvenli ortak OutputWriter
**Files:** çıktı yazıcı ve testleri.
**Interfaces:** `write(jobId, sourceName, crops): List<Uri>`.
- [ ] Aynı isimli iki çıktının birbirini ezmediğini test et.
- [ ] FAIL doğrula.
- [ ] Benzersiz isimlendirme ve ayrı çıktı klasörü yazımını uygula.
- [ ] PASS doğrula.
- [ ] Commit: `feat: add collision-safe crop output writer`.

### Task 4: Manuel Foto/Klasör Seç akışı
**Files:** ana ekran/seçici ve `ManualCropCoordinator`.
**Interfaces:** `enqueueSelection(uris)` ortak `CropJobStore`'a MANUAL işleri ekler.
- [ ] Çoklu seçimde her URI'nin bir kez kuyruğa girdiğini test et.
- [ ] FAIL doğrula.
- [ ] Fotoğraf ve klasör seçimlerini ortak kuyruğa bağla.
- [ ] PASS doğrula.
- [ ] Commit: `feat: add manual photo and folder crop mode`.

### Task 5: Screenshots foreground otomatik modu
**Files:** `ScreenshotCropService`, screenshot kaynak tarayıcı ve testleri.
**Interfaces:** servis yeni screenshot URI'lerini SCREENSHOT_AUTO olarak kuyruğa ekler ve ortak worker akışını tetikler.
- [ ] Daha önce TAMAMLANDI olan screenshot'ın yeniden kuyruğa girmediğini test et.
- [ ] FAIL doğrula.
- [ ] Foreground servis + kontrollü yeni dosya keşfi + ortak kuyruk bağlantısını uygula.
- [ ] PASS doğrula.
- [ ] Commit: `feat: add automatic screenshot crop service`.

### Task 6: Kuyruk yürütücüsü ve hata devamı
**Files:** `CropQueueRunner` ve testleri.
**Interfaces:** `runNext()` sırasıyla store -> engine -> writer -> store zincirini çalıştırır.
- [ ] İlk dosya hata verirken ikinci dosyanın tamamlandığını kanıtlayan test yaz.
- [ ] FAIL doğrula.
- [ ] Tek aktif iş, hata izolasyonu ve yeniden başlatma sonrası pending/running toparlama mantığını uygula.
- [ ] PASS doğrula.
- [ ] Commit: `feat: make crop queue resumable and fault tolerant`.

### Task 7: Birleşik minimum UI
**Files:** ana ekran ve durum gözlemleme kodu.
**Interfaces:** iki ana eylem `Foto/Klasör Seç` ve `Screenshots Otomatik`; sayaçlar store durumundan gelir.
- [ ] UI state testinde bekleyen/tamamlanan/hata sayaçlarını doğrula.
- [ ] FAIL doğrula.
- [ ] İki büyük mod düğmesi, otomatik mod aç/kapat ve aktif ilerlemeyi ekle.
- [ ] PASS doğrula.
- [ ] Commit: `feat: add unified crop dashboard`.

### Task 8: Tam doğrulama ve APK
**Files:** build/CI yapılandırması gerektiği kadar.
- [ ] Tüm unit/instrumentation testlerini temiz çalıştır.
- [ ] Debug APK derlemesini sıfırdan çalıştır.
- [ ] APK içinde doğru package/manifest/service/permission yapılarını kontrol et.
- [ ] Manuel seçim, otomatik screenshot, tek dosya hatası ve yeniden başlatma senaryolarını doğrula.
- [ ] Commit gerekiyorsa `ci: verify unified crop apk build`.
