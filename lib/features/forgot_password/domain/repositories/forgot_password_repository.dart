import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/forgot_password/data/models/forgot_password_model.dart';

abstract class ForgotPasswordRepository {
  Future<Either<ErrorModel, ForgotPasswordModel>> restorePassword({
    required String email,
    required String platform,
  });
}
