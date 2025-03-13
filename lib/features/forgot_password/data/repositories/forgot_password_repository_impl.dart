import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/core/network/request_handler.dart';
import 'package:flutter_app_scarb/features/forgot_password/data/datasources/forgot_password_remote_data_source.dart';
import 'package:flutter_app_scarb/features/forgot_password/data/models/forgot_password_model.dart';
import 'package:flutter_app_scarb/features/forgot_password/domain/repositories/forgot_password_repository.dart';

class ForgotPasswordRepositoryImpl extends ForgotPasswordRepository {
  final ForgotPasswordRemoteDataSource forgotPasswordRemoteDataSource;

  ForgotPasswordRepositoryImpl({required this.forgotPasswordRemoteDataSource});

  @override
  Future<Either<ErrorModel, ForgotPasswordModel>> restorePassword(
      {required String email, required String platform}) async {
    return await forgotPasswordRemoteDataSource
        .restorePassword(
      email,
      platform,
    )
        .guard((data) {
      ForgotPasswordModel model =
          ForgotPasswordModel.fromJson(data as Map<String, dynamic>);

      return model;
    });
  }
}
