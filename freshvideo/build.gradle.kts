plugins {
    id("com.android.application")
}

android {
    namespace = "com.atmaca.videoframefresh"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.atmaca.videoframefresh"
        minSdk = 26
        targetSdk = 35
        versionCode = 1
        versionName = "1.0.0"
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
}

dependencies {
    implementation("androidx.documentfile:documentfile:1.1.0")
}
