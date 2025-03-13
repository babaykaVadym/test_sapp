enum Flavor {
  dev,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String? get name => appFlavor?.name;
}
