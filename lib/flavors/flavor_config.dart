enum Flavor {
  PRODUCTION,
  DEV,
  BETA,
}

class FlavorConfig {
  final Flavor flavor;
  final String name;
  final String apiBaseUrl;

  static FlavorConfig? _instance;

  factory FlavorConfig({
    required Flavor flavor,
    required String apiBaseUrl,
    required String name,
  }) {
    _instance ??= FlavorConfig._internal(
      flavor,
      apiBaseUrl,
      name,
    );
    return _instance!;
  }

  FlavorConfig._internal(
    this.flavor,
    this.apiBaseUrl,
    this.name,
  );

  static FlavorConfig get instance {
    if (_instance == null) {
      throw Exception("FlavorConfig is not initialized");
    }
    return _instance!;
  }

  static bool isProduction() => instance.flavor == Flavor.PRODUCTION;

  static bool isDev() => instance.flavor == Flavor.DEV;

  static bool isBeta() => instance.flavor == Flavor.BETA;
}
