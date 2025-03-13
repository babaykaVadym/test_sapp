abstract class IntroLocalRepository {
  Future<void> setIntroStatus(bool isShowed);

  Future<bool> getIntroStatus();

  Future<void> deleteIntroStatus();
}
