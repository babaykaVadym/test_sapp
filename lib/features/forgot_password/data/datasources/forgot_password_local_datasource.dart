import 'package:shared_preferences/shared_preferences.dart';

abstract class ForgotPasswordDatasource {
  Future<void> storeEmailForRestore(String refreshToken);
}

class ForgotPasswordDatasourceImpl extends ForgotPasswordDatasource {
  final SharedPreferences sharedPreferences;

  ForgotPasswordDatasourceImpl({required this.sharedPreferences});

  @override
  Future<void> storeEmailForRestore(String email) async {
    await sharedPreferences.setString('restoreEmail', email);
  }
}
