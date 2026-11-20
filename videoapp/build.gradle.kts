plugins {
    id("com.android.application")
}

android {
    namespace = "com.videokareleri"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.videokareleri"
        minSdk = 26
        targetSdk = 35
        versionCode = 3
        versionName = "2.1.0"
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
    testImplementation("junit:junit:4.13.2")
}
