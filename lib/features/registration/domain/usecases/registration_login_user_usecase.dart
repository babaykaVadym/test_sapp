import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/registration/domain/repositories/registration_repository.dart';
import 'package:flutter_app_scarb/features/sign_in/data/models/sign_in_model.dart';

class RegistrationLoginUserUsecase {
  final RegistrationRepository registrationRepository;

  const RegistrationLoginUserUsecase(this.registrationRepository);

  Future<Either<ErrorModel, SignInModel>> signIn({
    required String email,
    required String password,
  }) async {
    return await registrationRepository.signIn(
      email: email,
      password: password,
    );
  }
}
