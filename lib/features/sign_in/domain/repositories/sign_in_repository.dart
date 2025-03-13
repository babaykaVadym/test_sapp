import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/sign_in/data/models/sign_in_model.dart';

abstract class SignInRepository {
  Future<Either<ErrorModel, SignInModel>> signIn({
    required String email,
    required String password,
  });
}
