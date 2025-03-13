import 'package:flutter_app_scarb/features/sign_in/domain/repositories/sign_in_local_repository.dart';

class SignInSetTokenLocalUsecase {
  final SignInLocalRepository signInLocalRepository;

  const SignInSetTokenLocalUsecase(this.signInLocalRepository);

  Future<void> setRefreshToken(String token) async {
    return await signInLocalRepository.setRefreshToken(token);
  }
}
