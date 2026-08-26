plugins {
    id("com.android.application")
}

android {
    namespace = "com.cokluvideoindirici"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.cokluvideoindirici"
        minSdk = 29
        targetSdk = 35
        versionCode = 1
        versionName = "1.0.0"
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
    implementation("androidx.work:work-runtime:2.10.1")
    implementation("com.squareup.okhttp3:okhttp:4.12.0")
}
