import 'package:shared_preferences/shared_preferences.dart';

abstract class SignInLocalDatasource {
  Future<void> setRefreshToken(String refreshToken);
}

class SignInLocalDatasourceImpl extends SignInLocalDatasource {
  final SharedPreferences sharedPreferences;

  SignInLocalDatasourceImpl({required this.sharedPreferences});

  @override
  Future<void> setRefreshToken(String refreshToken) async {
    await sharedPreferences.setString('refreshToken', refreshToken);
  }
}
