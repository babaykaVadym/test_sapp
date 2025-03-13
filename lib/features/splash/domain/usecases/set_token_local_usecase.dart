import 'package:flutter_app_scarb/features/splash/domain/repositories/splash_local_repository.dart';

class SetTokenLocalUsecase {
  final SplashLocalRepository splashLocalRepository;

  const SetTokenLocalUsecase(this.splashLocalRepository);

  Future<void> setRefreshToken(String token) async {
    return await splashLocalRepository.setRefreshToken(token);
  }
}
