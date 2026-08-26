# Akıllı Kişi Kırpma

Android için toplu kişi kırpma uygulaması.

- Tek fotoğraf veya çoklu fotoğraf seçebilir.
- Birden fazla klasör eklenebilir; alt klasörler dahil taranır.
- Fotoğraftaki kişiler EfficientDet Lite ile bulunur ve her kişi ayrı JPEG olarak kaydedilir.
- Kişi kutusuna pay bırakılarak kol/bacak kesilmesini azaltacak şekilde kırpılır.
- Orijinal fotoğraflar silinmez veya değiştirilmez.
- Yüz bulunamazsa veya yaş tahmini belirsizse çıktı üretilmez.
- Yalnızca modelin 20+ sınıfına yeterli güvenle yerleştirdiği kişiler kaydedilir; çocuk ve 12-19 sınıfı atlanır.
- Çıktılar `Pictures/AkilliKisiKirpma/<orijinal-dosya-adi>/` içine yazılır.
- Uygulama ikonu Sarı Lacivert Galeri ile aynıdır.

## Model kaynakları

Build sırasında iki model indirilir:

1. TensorFlow EfficientDet Lite0 COCO nesne algılama modeli.
2. `radualexandrub/Android-Age-Classification` projesindeki `AndroidAge_quant.tflite` yaş sınıflandırma modeli.

Yaş tahmini kesin bir yaş doğrulaması değildir. Uygulama güvenli tarafta kalmak için düşük güvenli veya kararsız sonuçları otomatik olarak atlar.
