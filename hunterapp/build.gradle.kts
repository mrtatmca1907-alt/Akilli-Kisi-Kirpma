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
        versionCode = 2
        versionName = "1.1.0"
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

// Android'in org.json.JSONObject sürümünde keySet() yok. Kaynağı derleme öncesi
// keys() iterator kullanımına çeviriyoruz; böylece API 26+ ile uyumlu kalıyor.
val patchHunterJson by tasks.registering {
    doLast {
        val source = file("src/main/java/com/gorselavcisi/HunterService.java")
        var text = source.readText()
        val old = "for (String key : pages.keySet()) {"
        if (text.contains(old)) {
            text = text.replace(
                old,
                "java.util.Iterator<String> keys = pages.keys();\n                    while (keys.hasNext()) {\n                        String key = keys.next();"
            )
            source.writeText(text)
        }
    }
}

afterEvaluate {
    tasks.named("compileDebugJavaWithJavac").configure { dependsOn(patchHunterJson) }
}
