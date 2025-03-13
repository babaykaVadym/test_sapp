import 'package:flutter_app_scarb/features/registration/domain/repositories/registration_local_repository.dart';

class RegistrationSetTokenLocalUsecase {
  final RegistrationLocalRepository registrationLocalRepository;

  const RegistrationSetTokenLocalUsecase(this.registrationLocalRepository);

  Future<void> setRefreshToken(String token) async {
    return await registrationLocalRepository.setRefreshToken(token);
  }
}
