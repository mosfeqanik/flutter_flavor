


import 'flavors/flavor_config.dart';
import 'main_common.dart';

void main() {
  mainCommon(
      flavor: Flavor.BETA,
      apiBaseUrl: "https://api.beta.example.com",
      appName: "MyApp Beta");
}