pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        mavenCentral()
    }
}

rootProject.name = "AkilliKisiKirpma"
include(":app", ":videoapp", ":downloaderapp", ":filemanagerapp", ":hunterapp", ":suiteapp")
