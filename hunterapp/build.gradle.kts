plugins {
    id("com.android.application")
}

android {
    namespace = "com.gorselavcisi"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.gorselavcisi"
        minSdk = 26
        targetSdk = 35
        versionCode = 3
        versionName = "1.2.0"
    }

    buildTypes {
        release {
            isMinifyEnabled = false
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
}

dependencies {
    implementation("androidx.core:core:1.16.0")
    implementation("org.jsoup:jsoup:1.18.3")
}

// Derleme öncesi iki güvenlik/dogruluk yaması uygulanır:
// 1) Android org.json için keySet() -> keys()
// 2) Derin taramada bir sayfadaki her resmi körlemesine almak yerine yalnızca
//    hedef kişiyi sayfa + görsel bağlamında doğrulayan medya toplanır.
val patchHunterJson by tasks.registering {
    doLast {
        val source = file("src/main/java/com/gorselavcisi/HunterService.java")
        var text = source.readText()

        val oldJson = "for (String key : pages.keySet()) {"
        if (text.contains(oldJson)) {
            text = text.replace(
                oldJson,
                "java.util.Iterator<String> keys = pages.keys();\n                    while (keys.hasNext()) {\n                        String key = keys.next();"
            )
        }

        val crawlStart = text.indexOf("    private void crawlPage(String pageUrl) {")
        val crawlEnd = if (crawlStart >= 0) text.indexOf("    private boolean addCandidate(", crawlStart) else -1
        if (crawlStart >= 0 && crawlEnd > crawlStart) {
            val strictCrawler = """
    private void crawlPage(String pageUrl) {
        try {
            publish("Sayfa inceleniyor…", host(pageUrl));
            Document doc = Jsoup.connect(pageUrl)
                    .userAgent(UA)
                    .referrer("https://www.bing.com/")
                    .timeout(12000)
                    .maxBodySize(5 * 1024 * 1024)
                    .followRedirects(true)
                    .get();

            String pageEvidence = pageUrl + " " + doc.title() + " " +
                    doc.select("meta[name=description],meta[property=og:description]").attr("content") + " " +
                    doc.select("h1").text();

            // Aranan isim sayfanın kendisinde güçlü biçimde geçmiyorsa o sayfanın
            // öneri/reklam/yan içerik görsellerini hiç toplamıyoruz.
            if (!mentionsTarget(pageEvidence)) return;

            // Sayfanın ana/kapak görseli: sayfa hedefle ilgiliyse kabul edilir.
            for (Element m : doc.select("meta[property=og:image],meta[name=twitter:image],link[rel=image_src]")) {
                String v = m.hasAttr("content") ? m.attr("content") : m.attr("href");
                addCandidate(abs(pageUrl, v), "image", pageUrl);
            }

            // Ana video metaları yalnızca doğrulanmış hedef sayfadan gelir.
            for (Element m : doc.select("meta[property=og:video],meta[property=og:video:url],meta[property=og:video:secure_url]")) {
                String v = m.attr("content");
                String u = abs(pageUrl, v);
                if (looksVideoFile(u)) addCandidate(u, "video", pageUrl);
                else if (u != null) addCandidate(u, "video_link", pageUrl);
            }

            // Sayfadaki normal görseller artık yalnızca kendi alt/title/caption/link
            // bağlamında hedef isim geçiyorsa kabul edilir. Böylece haber kenarındaki
            // başka ünlüler, reklamlar ve öneri kutuları içeri girmez.
            for (Element img : doc.select("img")) {
                String v = firstNonEmpty(img.attr("data-src"), img.attr("data-original"), img.attr("src"));
                String u = abs(pageUrl, v);
                String local = img.attr("alt") + " " + img.attr("title") + " " +
                        img.attr("aria-label") + " " + img.attr("data-caption");
                Element figure = img.closest("figure");
                if (figure != null) local += " " + figure.select("figcaption").text();
                Element link = img.closest("a");
                if (link != null) local += " " + link.text() + " " + link.attr("href");

                if (mentionsTarget(local + " " + u)) {
                    addCandidate(u, "image", pageUrl);
                    String srcset = img.attr("srcset");
                    if (!srcset.isEmpty()) {
                        for (String part : srcset.split(",")) {
                            String candidate = part.trim().split("\\s+")[0];
                            addCandidate(abs(pageUrl, candidate), "image", pageUrl);
                        }
                    }
                }
            }

            // Sayfanın içindeki video etiketi, sayfa zaten hedefle doğrulandıysa tutulur.
            for (Element s : doc.select("video[src],video source[src],source[type^=video][src]")) {
                String u = abs(pageUrl, s.attr("src"));
                if (looksVideoFile(u)) addCandidate(u, "video", pageUrl);
                else if (u != null) addCandidate(u, "video_link", pageUrl);
            }

            // Doğrudan medya linklerinde de linkin kendi metni/adresi hedefle ilgili olmalı.
            for (Element a : doc.select("a[href]")) {
                String u = abs(pageUrl, a.attr("href"));
                String local = a.text() + " " + a.attr("title") + " " + a.attr("aria-label") + " " + u;
                if (!mentionsTarget(local)) continue;
                if (looksImageFile(u)) addCandidate(u, "image", pageUrl);
                else if (looksVideoFile(u)) addCandidate(u, "video", pageUrl);
                else if (isKnownVideoPage(u)) addCandidate(u, "video_link", pageUrl);
            }
        } catch (Throwable ignored) {
            // Zorlayan, giriş isteyen veya bot engeli koyan kaynak sessizce atlanır.
        }
    }

    private boolean mentionsTarget(String text) {
        String q = normalizeForMatch(query);
        String evidence = normalizeForMatch(text);
        if (q.isEmpty() || evidence.isEmpty()) return false;
        String padded = " " + evidence + " ";
        int meaningful = 0;
        for (String token : q.split("\\s+")) {
            if (token.length() < 2) continue;
            if (token.equals("foto") || token.equals("fotograf") || token.equals("photo") ||
                    token.equals("image") || token.equals("images") || token.equals("galeri") ||
                    token.equals("gallery") || token.equals("video") || token.equals("videos")) continue;
            meaningful++;
            if (!padded.contains(" " + token + " ")) return false;
        }
        return meaningful > 0;
    }

    private String normalizeForMatch(String text) {
        if (text == null) return "";
        String decoded = text;
        try { decoded = URLDecoder.decode(text, StandardCharsets.UTF_8.name()); } catch (Throwable ignored) {}
        String s = java.text.Normalizer.normalize(decoded, java.text.Normalizer.Form.NFD)
                .replaceAll("\\p{M}+", "")
                .toLowerCase(Locale.ROOT)
                .replaceAll("[^\\p{L}\\p{N}]+", " ")
                .trim();
        return s.replaceAll("\\s+", " ");
    }

""".trimIndent() + "\n"
            text = text.substring(0, crawlStart) + strictCrawler + text.substring(crawlEnd)
        }

        source.writeText(text)
    }
}

afterEvaluate {
    tasks.named("compileDebugJavaWithJavac").configure { dependsOn(patchHunterJson) }
}
