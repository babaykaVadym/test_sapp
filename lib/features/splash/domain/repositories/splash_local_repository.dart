abstract class SplashLocalRepository {
  Future<void> setRefreshToken(String token);

  Future<void> deleteToken();

  Future<String?> getRefreshToken();
}
