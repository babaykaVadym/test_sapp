import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(
  path: '.env.dev',
  obfuscate: true,
)
abstract class EnvDev {
  @EnviedField(varName: 'API_URL')
  static String apiUrl = _EnvDev.apiUrl;

  @EnviedField(varName: 'DEBUG')
  static bool debug = _EnvDev.debug;

  @EnviedField(varName: 'API_CONNECT_TIMEOUT')
  static int apiConnectTimeout = _EnvDev.apiConnectTimeout;

  @EnviedField(varName: 'API_RECEIVE_TIMEOUT')
  static int apiReceiveTimeout = _EnvDev.apiReceiveTimeout;
}

@Envied(
  path: '.env.prod',
  obfuscate: true,
)
abstract class EnvProd {
  @EnviedField(varName: 'API_URL')
  static String apiUrl = _EnvProd.apiUrl;

  @EnviedField(varName: 'DEBUG')
  static bool debug = _EnvProd.debug;

  @EnviedField(varName: 'API_CONNECT_TIMEOUT')
  static int apiConnectTimeout = _EnvProd.apiConnectTimeout;

  @EnviedField(varName: 'API_RECEIVE_TIMEOUT')
  static int apiReceiveTimeout = _EnvProd.apiReceiveTimeout;
}
