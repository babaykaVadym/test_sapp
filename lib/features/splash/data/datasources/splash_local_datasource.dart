import 'package:shared_preferences/shared_preferences.dart';

abstract class SplashLocalDatasource {
  Future<String?> getRefreshToken();

  Future<void> setRefreshToken(String refreshToken);

  Future<void> deleteToken();
}

class SplashLocalDatasourceImpl extends SplashLocalDatasource {
  final SharedPreferences sharedPreferences;

  SplashLocalDatasourceImpl({required this.sharedPreferences});

  @override
  Future<String?> getRefreshToken() async {
    String? refreshToken = sharedPreferences.getString('refreshToken');

    return refreshToken;
  }

  @override
  Future<void> setRefreshToken(String refreshToken) async {
    await sharedPreferences.setString('refreshToken', refreshToken);
  }

  @override
  Future<void> deleteToken() async {
    if (sharedPreferences.containsKey('refreshToken')) {
      await sharedPreferences.remove('refreshToken');
    }
  }
}
