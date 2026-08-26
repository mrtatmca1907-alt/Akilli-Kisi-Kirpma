plugins {
    id("com.android.application")
}

android {
    // Akıllı Kişi Kırpma kaynağı kendi paketindeki R sınıfını bekliyor.
    // Suite R sınıfını bu namespace'te üretiyoruz; diğer araçlara küçük R köprüleri var.
    namespace = "com.akillikisikirpma"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.besliaraclar"
        minSdk = 29
        targetSdk = 35
        versionCode = 1
        versionName = "0.1-deneme"
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

    androidResources {
        noCompress += "tflite"
    }

    sourceSets.getByName("main") {
        java.srcDirs(
            "src/main/java",
            "../app/src/main/java",
            "../videoapp/src/main/java",
            "../downloaderapp/src/main/java",
            "../hunterapp/src/main/java"
        )
        assets.srcDirs("../app/src/main/assets")
    }
}

dependencies {
    implementation("androidx.core:core:1.16.0")
    implementation("androidx.documentfile:documentfile:1.1.0")
    implementation("androidx.work:work-runtime:2.10.1")
    implementation("com.squareup.okhttp3:okhttp:4.12.0")
    implementation("org.jsoup:jsoup:1.18.3")
    implementation("org.tensorflow:tensorflow-lite-task-vision:0.4.4")
    implementation("org.tensorflow:tensorflow-lite-support:0.4.4")
}

// Hunter kaynağındaki Android org.json uyumluluğunu birleşik derlemede de garanti et.
val patchSuiteHunterJson by tasks.registering {
    doLast {
        val source = file("../hunterapp/src/main/java/com/gorselavcisi/HunterService.java")
        if (source.exists()) {
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
}

afterEvaluate {
    tasks.named("compileDebugJavaWithJavac").configure { dependsOn(patchSuiteHunterJson) }
}
