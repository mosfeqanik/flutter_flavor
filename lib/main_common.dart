import 'package:flutter/material.dart';

import 'firebase_options_*.dart';
import 'flavors/flavor_config.dart';
import 'flutter_app.dart';

void mainCommon(
    {required Flavor flavor,
    required String apiBaseUrl,
    required String appName}) async{
  WidgetsFlutterBinding.ensureInitialized();
  FlavorConfig(
      flavor: flavor, apiBaseUrl: apiBaseUrl, name: appName);
  await initializeFirebaseApp();
  runApp(const MyApp());
}
