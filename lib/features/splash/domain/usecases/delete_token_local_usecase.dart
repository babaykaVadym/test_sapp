import 'package:flutter_app_scarb/features/splash/domain/repositories/splash_local_repository.dart';

class DeleteTokenLocalUsecase {
  final SplashLocalRepository splashLocalRepository;

  const DeleteTokenLocalUsecase(this.splashLocalRepository);

  Future<void> deleteToken() async {
    return await splashLocalRepository.deleteToken();
  }
}
