import 'flavors/flavor_config.dart';
import 'main_common.dart';

void main() {
  mainCommon(
      flavor: Flavor.PRODUCTION,
      apiBaseUrl: "https://api.production.example.com",
      appName: "MyApp Production");
}