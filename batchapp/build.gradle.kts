plugins {
    id("com.android.application")
}

android {
    namespace = "com.atmaca.batch50"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.atmaca.batch50"
        minSdk = 26
        targetSdk = 35
        versionCode = 1
        versionName = "1.0.0"
    }

    buildTypes {
        release { isMinifyEnabled = false }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    androidResources { noCompress += "tflite" }
}

dependencies {
    implementation("org.tensorflow:tensorflow-lite-task-vision:0.4.4")
    implementation("org.tensorflow:tensorflow-lite-support:0.4.4")
    testImplementation("junit:junit:4.13.2")
}
