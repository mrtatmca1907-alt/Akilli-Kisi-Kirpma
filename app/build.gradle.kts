plugins {
    id("com.android.application")
}

android {
    namespace = "com.akillikisikirpma"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.akillikisikirpma"
        minSdk = 26
        targetSdk = 35
        versionCode = 10
        versionName = "1.8.0"
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
}

dependencies {
    implementation("androidx.documentfile:documentfile:1.1.0")
    implementation("org.tensorflow:tensorflow-lite-task-vision:0.4.4")
    implementation("org.tensorflow:tensorflow-lite-support:0.4.4")
    testImplementation("junit:junit:4.13.2")
}

val personModelFile = layout.projectDirectory.file("src/main/assets/efficientdet-lite0.tflite")
val downloadPersonModel by tasks.registering {
    outputs.file(personModelFile)
    doLast {
        val target = personModelFile.asFile
        if (!target.exists() || target.length() < 1_000_000L) {
            target.parentFile.mkdirs()
            val modelUrl = java.net.URL("https://storage.googleapis.com/download.tensorflow.org/models/tflite/task_library/object_detection/android/lite-model_efficientdet_lite0_detection_metadata_1.tflite")
            modelUrl.openConnection().apply {
                connectTimeout = 30000
                readTimeout = 120000
            }.getInputStream().use { input ->
                target.outputStream().use { output -> input.copyTo(output) }
            }
        }
        check(target.exists() && target.length() > 1_000_000L) { "EfficientDet Lite0 modeli indirilemedi" }
    }
}
tasks.named("preBuild").configure {
    dependsOn(downloadPersonModel)
}
