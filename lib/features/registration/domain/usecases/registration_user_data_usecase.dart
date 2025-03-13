import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/registration/data/models/registration_model.dart';
import 'package:flutter_app_scarb/features/registration/domain/repositories/registration_repository.dart';

class RegistrationUserDataUsecase {
  final RegistrationRepository registrationRepository;

  const RegistrationUserDataUsecase(this.registrationRepository);

  Future<Either<ErrorModel, RegistrationModel>> registrationUser(
      {required String email,
      required String password,
      required String inviteCode}) async {
    return await registrationRepository.registrationUser(
      email: email,
      inviteCode: inviteCode,
      password: password,
    );
  }
}
