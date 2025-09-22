# 🚀 Flutter Flavors with Firebase
* [Flutter](https://flutter.dev).
* [Firebase](https://firebase.google.com).
* [Android](https://developer.android.com).
* [iOS](https://developer.apple.com/ios/).

This repository demonstrates how to set up multiple app flavors in Flutter with separate Firebase projects for each environment:

* ✅ Development

* 🟡 Beta

* 🔵 Production


## 📑 Table of Contents


* ⚡ Getting Started

* 📂 Project Setup
    * 🔹 Android: app/build.gradle
    * 🔹 iOS: Xcode Schemes
* 🎨 App Icons per Flavor
* ▶️ Running Flavors
* 🔥 Firebase Setup
    * Authentication
    * FlutterFire CLI Configurations

        * ✅ Production
        * 🟡 Beta
        * ✅ Development
* 📖 Summary
* 📚 References

## ⚡ Getting Started

### 1️⃣ Clone the repository

```
git clone https://github.com/mosfeqanik/flutter_flavor
cd flutter_flavor
```
### 2️⃣ Install dependencies

```
flutter pub get
```
### 3️⃣ Generate launcher icons

```
dart run flutter_launcher_icons:main -f flutter_launcher_icons*
```

### 4️⃣ Configure Firebase for each flavor

Use the **FlutterFire CLI** to generate environment-specific Firebase configs

## 📂 Project Setup

🔹 Android: `app/build.gradle`
```
flavorDimensions "flavor-type"

productFlavors {
    development {
        dimension "flavor-type"
        applicationIdSuffix ".dev"
        versionNameSuffix "-dev"
        resValue "string", "app_name", "Flavors Dev"
    }
    beta {
        dimension "flavor-type"
        applicationIdSuffix ".beta"
        versionNameSuffix "-beta"
        resValue "string", "app_name", "Flavors Beta"
    }
    production {
        dimension "flavor-type"
        resValue "string", "app_name", "Flavors"
        // No suffix for production
    }
}
```
### For Android Studio add Flavors Configuration
![This is a preview image of configure flavor in android_studio by Md Mosfeq Anik.](/assets/configure_flavor_in_android_studio.png "This is a preview image of configure flavor in android_studio by Md Mosfeq Anik.")

## For Vscode add Flavors Configuration
create `.vscode/launch.json`

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Launch development",
      "type": "dart",
      "request": "launch",
      "program": "lib/main_development.dart",
      "args": [
        "--flavor",
        "development",
        "--target",
        "lib/main_development.dart"
      ]
    },
    {
      "name": "Launch beta",
      "type": "dart",
      "request": "launch",
      "program": "lib/main_beta.dart",
      "args": [
        "--flavor",
        "beta",
        "--target",
        "lib/main_beta.dart"
      ]
    },
    {
      "name": "Launch production",
      "type": "dart",
      "request": "launch",
      "program": "lib/main_production.dart",
      "args": [
        "--flavor",
        "production",
        "--target",
        "lib/main_production.dart"
      ]
    }
  ]
}
```

## 🔹 iOS: Xcode Schemes
* Add separate schemes for each flavor:
    * `development`
    * `beta`
    * `production`

This ensures each environment uses its respective Firebase config.

## 🎨 App Icons per Flavor
To generate launcher icons for each flavor:
```
dart run flutter_launcher_icons:main -f flutter_launcher_icons*
```
## ▶️ Running Flavors
Run the app with the correct flavor

* **Development**
```
flutter run --flavor development -t lib/main_development.dart
```
* **Beta**
```
flutter run --flavor beta -t lib/main_beta.dart
```
* **Production**
```
flutter run --flavor production -t lib/main_production.dart
```
## 🔥 Firebase Setup
### Authentication
```
firebase login
firebase logout
```
## FlutterFire CLI Configurations
Each flavor uses its own Firebase project and generates its own configuration files.
✅ Production
```
flutterfire config \
--project=flutter-flavor-productio-7710a \
--out=lib/firebase_options_production.dart \
--ios-bundle-id=com.example.flutterFlavorsTest \
--ios-out=ios/flavors/production/GoogleService-Info.plist \
--android-package-name=com.example.flutter_flavors_test \
--android-out=android/app/src/production/google-services.json
```
🟡 Beta
```
flutterfire config \
--project=flutter-flavors-beta \
--out=lib/firebase_options_beta.dart \
--ios-bundle-id=com.example.flutterFlavorsTest.beta \
--ios-out=ios/flavors/beta/GoogleService-Info.plist \
--android-package-name=com.example.flutter_flavors_test.beta \
--android-out=android/app/src/beta/google-services.json
```
✅ Development
```
flutterfire config \
--project=flutter-flavor-dev-80835 \
--out=lib/firebase_options_development.dart \
--ios-bundle-id=com.example.flutterFlavorsTest \
--ios-out=ios/flavors/development/GoogleService-Info.plist \
--android-package-name=com.example.flutter_flavors_test.dev \
--android-out=android/app/src/development/google-services.json

```
### 📖 Summary

* **Flavors** help maintain **separate environments** (dev, beta, prod).
* Each flavor has its own **Firebase project**.
* Easy to run using `--flavor` with a matching `main_*.dart` entry point.
* iOS & Android configs are neatly separated for clean builds.

## 📚 References

* [Flutter Official Docs](https://docs.flutter.dev/)
* [Flutter: Build Flavors](https://docs.flutter.dev/deployment/flavors)
* [Firebase Official Docs](https://firebase.flutter.dev/docs/cli/)
* [FlutterFire CLI](https://docs.flutter.dev/deployment/flavors)
* [flutter_launcher_icons Package ](https://pub.dev/packages/flutter_launcher_icons)

Thanks to
* [Andrea Bizzotto(How to Setup Flutter & Firebase with Multiple Flavors using the FlutterFire CLI)](https://codewithandrea.com/articles/flutter-firebase-multiple-flavors-flutterfire-cli/)
* [Marcus Ng(Flutter Flavors, App Icons, and Firebase Tutorial)](https://www.youtube.com/watch?v=Vhm1Cv2uPko)
* [DevVibe(Flutter Flavors Explained — Dev, Staging, Prod Setup in Flutter (Android & iOS))](https://www.youtube.com/watch?v=EyQfuKvVUGY)

![This is a preview image of flavor structure by Md Mosfeq Anik.](/assets/detailed_screenshot.png "This is a preview image of flavor structure by Md Mosfeq Anik.")


