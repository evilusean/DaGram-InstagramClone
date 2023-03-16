# DaGram-InstagramClone

Flutter/Firebase, Responsive design-Works on iOS, Android and HTML! </br>
Uses Firebase Core/Cloud Firestore/Firebase Auth/Firebase Storage </br>
flutter run -d chrome --web-renderer html #use to run code in main.dart </br>
Still can not emulate on iOS/Android, haxm issue with android studio 1 1/2 days wasted </br>
HTML chrome/Windows works for debugging now </br>
Emulation works, requires haxm 7.6.5 NOT 7.8 to work with flutter/android studio emulation, manual install to fix </br>
To get access to emulator, first run emulator and Run -> Run without Debugging </br>

Add to build gradle to add google firebase to project </br>
#To make the google-services.json config values accessible to Firebase SDKs, you need the Google services Gradle plugin.

#Add the plugin as a buildscript dependency to your project-level build.gradle file:

#Root-level (project-level) Gradle file (<project>/build.gradle):
buildscript {
  repositories {
    // Make sure that you have the following two repositories
    google()  // Google's Maven repository

    mavenCentral()  // Maven Central repository

  }
  dependencies {
    ...
    // Add the dependency for the Google services Gradle plugin
    classpath 'com.google.gms:google-services:4.3.15'

  }
}

allprojects {
  ...
  repositories {
    // Make sure that you have the following two repositories
    google()  // Google's Maven repository

    mavenCentral()  // Maven Central repository

  }
}
#Then, in your module (app-level) build.gradle file, add both the google-services plugin and any Firebase SDKs that you want to use in #your app:

#Module (app-level) Gradle file (<project>/<app-module>/build.gradle):
plugins {
  id 'com.android.application'

  // Add the Google services Gradle plugin
  id 'com.google.gms.google-services'

  ...
}

dependencies {
  // Import the Firebase BoM
  implementation platform('com.google.firebase:firebase-bom:31.2.3')


  // TODO: Add the dependencies for Firebase products you want to use
  // When using the BoM, don't specify versions in Firebase dependencies
  // https://firebase.google.com/docs/android/setup#available-libraries
}
#By using the Firebase Android BoM, your app will always use compatible Firebase library versions. Learn more
#After adding the plugin and the desired SDKs, sync your Android project with Gradle files.