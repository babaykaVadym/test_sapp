enum Flavor {
  dev,
  prod,
}

class F {
  static Flavor? appFlavor;

  //adasdadad
  static String? get name => appFlavor?.name;
}
