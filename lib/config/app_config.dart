import 'package:flutter_app_scarb/core/env/env.dart';

class AppConfig {
  static late String apiUrl;
  static late String apiKey;
  static late bool debugMode;
  static late int apiConnectTimeout;
  static late int apiReceiveTimeout;

  static void initConfig(String flavor) {
    switch (flavor) {
      case 'prod':
        apiUrl = EnvProd.apiUrl;

        debugMode = EnvProd.debug;
        apiReceiveTimeout = EnvProd.apiReceiveTimeout;
        apiConnectTimeout = EnvProd.apiConnectTimeout;
        break;
      default:
        apiUrl = EnvDev.apiUrl;
        debugMode = EnvDev.debug;
        apiReceiveTimeout = EnvDev.apiReceiveTimeout;
        apiConnectTimeout = EnvDev.apiConnectTimeout;
        break;
    }
  }
}
