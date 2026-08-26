plugins {
    id("com.android.application")
}

android {
    namespace = "com.atmaca.dosyalar"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.atmaca.dosyalar"
        minSdk = 26
        targetSdk = 35
        versionCode = 3
        versionName = "3.0.0"
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
    implementation("androidx.documentfile:documentfile:1.1.0")
    implementation("androidx.core:core:1.16.0")
}
