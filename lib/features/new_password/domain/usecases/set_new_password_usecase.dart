import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/new_password/data/models/new_password_model.dart';
import 'package:flutter_app_scarb/features/new_password/domain/repositories/new_password_repository.dart';

class SetNewPasswordUsecase {
  final NewPasswordRepository newPasswordRepository;

  const SetNewPasswordUsecase(this.newPasswordRepository);

  Future<Either<ErrorModel, NewPasswordModel>> setNewPassword({
    required String newPassword,
    required String hash,
    required String email,
  }) async {
    return await newPasswordRepository.setNewPassword(
      email: email,
      hash: hash,
      newPassword: newPassword,
    );
  }
}
