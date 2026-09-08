# ATMACA Birleşik Kişi Kırpma Tasarımı

## Amaç
Kişi Kırpma uygulamasının sade manuel seç-kırp akışı ile Screenshot sürümünün arka plan servisi, otomatik klasör işleme, durum/ilerleme ve hata devam mekanizmasını tek Android APK'da birleştirmek.

## Kullanıcı akışları
1. **Foto/Klasör Seç:** Kullanıcı tek fotoğraf veya klasör seçer. Aynı kişi algılama motoru seçilen görüntüleri işler ve her algılanan kişi için ayrı kırpılmış çıktı üretir.
2. **Screenshots Otomatik:** Kullanıcı bu modu başlatır. Screenshots kaynağındaki yeni görüntüler arka planda sırayla işlenir. Daha önce tamamlanan dosyalar tekrar işlenmez.

## Mimari
- Tek ortak `PersonCropEngine`: iki mod da aynı algılama/kırpma motorunu kullanır; model iki ayrı sistem olarak çoğaltılmaz.
- `ManualCropCoordinator`: kullanıcı seçimlerini kuyruğa dönüştürür.
- `ScreenshotCropService`: foreground service olarak otomatik screenshot işlerini yürütür.
- `CropJobStore`: BEKLIYOR / ISLENIYOR / TAMAMLANDI / HATA durumlarını kalıcı tutar; uygulama kapanınca tamamlanan işler tekrar yapılmaz ve yarım işler devam eder.
- `OutputWriter`: kaynak görüntüyü değiştirmeden kırpılmış çıktıları ayrı klasöre güvenli adlarla yazar.

## Performans
- Tam çözünürlüklü görüntüler listeleme/tarama sırasında decode edilmez.
- İşleme UI thread dışında yapılır.
- Aynı anda kontrollü sayıda görüntü işlenir; varsayılan tek aktif kırpma işi ile RAM sıçraması ve ANR riski azaltılır.
- Aynı model örneği mümkün olduğunca yeniden kullanılır.

## Hata davranışı
Tek bir bozuk/işlenemeyen görüntü kuyruğu durdurmaz. Dosya HATA durumuna alınır, hata bilgisi saklanır ve sonraki görüntüye geçilir. Uygulama yeniden açıldığında yarım kalan iş kuyruğu devam eder.

## Depolama
Kaynak fotoğraflar otomatik silinmez veya üzerine yazılmaz. Kırpılmış çıktılar uygulamanın ayrı çıktı alanına yazılır. Dosya adı çakışmasında benzersiz ad üretilir.

## Arayüz
Ana ekran minimum tutulur:
- `Foto/Klasör Seç`
- `Screenshots Otomatik`
- Bekleyen / tamamlanan / hata sayaçları
- Aktif iş ilerlemesi
- Otomatik mod aç/kapat kontrolü

## Kabul kriterleri
- Manuel ve Screenshots modları aynı kişi kırpma motorunu kullanır.
- Arka plan işi uygulamanın ana ekranını kilitlemez.
- Bir dosya hatası tüm kuyruğu durdurmaz.
- Tamamlanan dosyalar yeniden işlenmez.
- Uygulama kapanıp açıldığında iş durumu kaybolmaz.
- Kaynak görüntüler değiştirilmez/silinmez.
