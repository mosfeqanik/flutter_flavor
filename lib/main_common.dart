import 'package:flutter/material.dart';

import 'flavors/flavor_config.dart';
import 'flutter_app.dart';

void mainCommon(
    {required Flavor flavor,
    required String apiBaseUrl,
    required String appName}) {
  FlavorConfig(
      flavor: flavor, apiBaseUrl: apiBaseUrl, name: appName);
  runApp(const MyApp());
}
