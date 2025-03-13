import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/forgot_password/data/models/forgot_password_model.dart';
import 'package:flutter_app_scarb/features/forgot_password/domain/repositories/forgot_password_repository.dart';

class RestorePasswordUsecase {
  final ForgotPasswordRepository forgotPasswordRepository;

  const RestorePasswordUsecase(this.forgotPasswordRepository);

  Future<Either<ErrorModel, ForgotPasswordModel>> restorePassword({
    required String email,
    required String platform,
  }) async {
    return await forgotPasswordRepository.restorePassword(
      email: email,
      platform: platform,
    );
  }
}
