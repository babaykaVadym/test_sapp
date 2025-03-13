import 'package:shared_preferences/shared_preferences.dart';

abstract class NewPasswordLocalDatasource {
  Future<String?> getEmailForRestore();
  Future<void> clearEmailForRestore();
}

class NewPasswordDatasourceImpl extends NewPasswordLocalDatasource {
  final SharedPreferences sharedPreferences;

  NewPasswordDatasourceImpl({required this.sharedPreferences});

  @override
  Future<String?> getEmailForRestore() async {
    return sharedPreferences.getString(
      'refreshToken',
    );
  }

  @override
  Future<void> clearEmailForRestore() async {
    if (sharedPreferences.containsKey('isIntroShowed')) {
      await sharedPreferences.remove('isIntroShowed');
    }
  }
}
