import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/new_password/data/models/new_password_model.dart';

abstract class NewPasswordRepository {
  Future<Either<ErrorModel, NewPasswordModel>> setNewPassword({
    required String newPassword,
    required String hash,
    required String email,
  });
}
