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
        versionCode = 2
        versionName = "0.2-auto-media"
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
