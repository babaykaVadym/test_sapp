import 'package:flutter_app_scarb/features/splash/domain/repositories/splash_local_repository.dart';

class GetTokenLocalUsecase {
  final SplashLocalRepository splashLocalRepository;

  const GetTokenLocalUsecase(this.splashLocalRepository);

  Future<String?> getRefreshToken() async {
    return await splashLocalRepository.getRefreshToken();
  }
}
