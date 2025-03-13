import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/sign_in/data/models/sign_in_model.dart';
import 'package:flutter_app_scarb/features/sign_in/domain/repositories/sign_in_repository.dart';

class SignInUsecase {
  final SignInRepository signInRepository;

  const SignInUsecase(this.signInRepository);

  Future<Either<ErrorModel, SignInModel>> signIn({
    required String email,
    required String password,
  }) async {
    return await signInRepository.signIn(
      email: email,
      password: password,
    );
  }
}
