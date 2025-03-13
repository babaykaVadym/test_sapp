import 'package:shared_preferences/shared_preferences.dart';

abstract class IntroLocalDatasource {
  Future<void> setIntroStatus(bool isShowed);

  Future<bool> getIntroStatus();

  Future<void> deleteIntroStatus();
}

class IntroLocalDatasourceImpl extends IntroLocalDatasource {
  final SharedPreferences sharedPreferences;

  IntroLocalDatasourceImpl({required this.sharedPreferences});

  @override
  Future<void> setIntroStatus(bool isShowed) async {
    await sharedPreferences.setString('isIntroShowed', isShowed.toString());
  }

  @override
  Future<bool> getIntroStatus() async {
    String? isOnboardingShowed = sharedPreferences.getString('isIntroShowed');

    return isOnboardingShowed?.toLowerCase() == 'true';
  }

  @override
  Future<void> deleteIntroStatus() async {
    if (sharedPreferences.containsKey('isIntroShowed')) {
      await sharedPreferences.remove('isIntroShowed');
    }
  }
}
