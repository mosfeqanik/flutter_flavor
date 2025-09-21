import 'flavors/flavor_config.dart';
import 'main_common.dart';

void main() {
  mainCommon(
      flavor: Flavor.DEV,
      apiBaseUrl: "https://api.dev.example.com",
      appName: "MyApp DEV");
}