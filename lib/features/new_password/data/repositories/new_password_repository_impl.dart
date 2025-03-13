import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/core/network/request_handler.dart';
import 'package:flutter_app_scarb/features/new_password/data/datasources/new_password_remote_data_source.dart';
import 'package:flutter_app_scarb/features/new_password/data/models/new_password_model.dart';
import 'package:flutter_app_scarb/features/new_password/domain/repositories/new_password_repository.dart';

class NewPasswordRepositoryImpl extends NewPasswordRepository {
  final NewPasswordRemoteDataSource newPasswordRemoteDataSource;

  NewPasswordRepositoryImpl({required this.newPasswordRemoteDataSource});

  @override
  Future<Either<ErrorModel, NewPasswordModel>> setNewPassword(
      {required String newPassword,
      required String hash,
      required String email}) async {
    return await newPasswordRemoteDataSource
        .setNewPassword(
      email: email,
      hash: hash,
      newPassword: newPassword,
    )
        .guard((data) {
      NewPasswordModel model =
          NewPasswordModel.fromJson(data as Map<String, dynamic>);

      return model;
    });
  }
}
