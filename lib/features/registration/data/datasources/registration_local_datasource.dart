import 'package:shared_preferences/shared_preferences.dart';

abstract class RegistrationLocalDatasource {
  Future<void> setRefreshToken(String refreshToken);
}

class RegistrationLocalDatasourceImpl extends RegistrationLocalDatasource {
  final SharedPreferences sharedPreferences;

  RegistrationLocalDatasourceImpl({required this.sharedPreferences});

  @override
  Future<void> setRefreshToken(String refreshToken) async {
    await sharedPreferences.setString('refreshToken', refreshToken);
  }
}
