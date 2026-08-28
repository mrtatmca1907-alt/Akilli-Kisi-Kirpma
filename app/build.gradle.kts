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
        versionCode = 4
        versionName = "2.0.0-screenshot"
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
}
