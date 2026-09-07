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
        versionCode = 5
        versionName = "1.3.0"
    }

    buildTypes {
        release { isMinifyEnabled = false }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
}

dependencies {
    testImplementation("junit:junit:4.13.2")
}
