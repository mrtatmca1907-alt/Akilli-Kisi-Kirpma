plugins {
    id("com.android.application")
}

android {
    namespace = "com.akillikisikirpma"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.besliaraclar"
        minSdk = 29
        targetSdk = 35
        versionCode = 3
        versionName = "0.3-auto-media-lossless"
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
            "../app/src/main/java"
        )
        java.exclude("com/akillikisikirpma/MainActivity.java")
        java.exclude("com/akillikisikirpma/CropForegroundService.java")
        assets.srcDirs("../app/src/main/assets")
    }
}

dependencies {
    implementation("androidx.core:core:1.16.0")
    implementation("org.tensorflow:tensorflow-lite-task-vision:0.4.4")
    implementation("org.tensorflow:tensorflow-lite-support:0.4.4")
    testImplementation("junit:junit:4.13.2")
}

val patchLosslessPersonCrops by tasks.registering {
    doLast {
        val source = file("../app/src/main/java/com/akillikisikirpma/PersonCropEngine.java")
        if (!source.exists()) throw GradleException("PersonCropEngine.java bulunamadi")
        var text = source.readText()
        text = text.replace(
            "sourceBase + \"_kisi_\" + personNo + \".jpg\"",
            "sourceBase + \"_kisi_\" + personNo + \".png\""
        )
        text = text.replace(
            "Bitmap.CompressFormat.JPEG, 96",
            "Bitmap.CompressFormat.PNG, 100"
        )
        source.writeText(text)
    }
}

afterEvaluate {
    tasks.named("compileDebugJavaWithJavac").configure {
        dependsOn(patchLosslessPersonCrops)
    }
}
