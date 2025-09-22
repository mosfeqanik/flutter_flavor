#!/bin/bash
# Script to generate Firebase configuration files for different environments/flavors
# Feel free to reuse and adapt this script for your own projects

if [[ $# -eq 0 ]]; then
  echo "Error: No environment specified. Use 'development', 'beta', or 'production'."
  exit 1
fi

case $1 in
  development)
    flutterfire config \
     --project=flutter-flavor-dev \
     --out=lib/firebase_options_dev.dart \
     --ios-bundle-id=com.example.flutterFlavorsTest \
     --ios-out=ios/flavors/dev/GoogleService-Info.plist \
     --android-package-name=com.example.flutter_flavors_test \
     --android-out=android/app/src/dev/google-services.json
    ;;
  beta)
    flutterfire config \
     --project=flutter-flavors-beta \
     --out=lib/firebase_options_beta.dart \
     --ios-bundle-id=com.example.flutterFlavorsTest \
     --ios-out=ios/flavors/dev/GoogleService-Info.plist \
     --android-package-name=com.example.flutter_flavors_test \
     --android-out=android/app/src/dev/google-services.json
    ;;
  production)
     flutterfire config \
     --project=flutter-flavor-production \
     --out=lib/firebase_options_production.dart \
     --ios-bundle-id=com.example.flutterFlavorsTest \
     --ios-out=ios/flavors/dev/GoogleService-Info.plist \
     --android-package-name=com.example.flutter_flavors_test \
     --android-out=android/app/src/dev/google-services.json
    ;;
  *)
    echo "Error: Invalid environment specified. Use 'development', 'beta', or 'production'."
    exit 1
    ;;
esac