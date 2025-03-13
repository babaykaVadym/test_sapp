import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/core/network/request_handler.dart';
import 'package:flutter_app_scarb/features/registration/data/datasources/registration_remote_data_source.dart';
import 'package:flutter_app_scarb/features/registration/data/models/registration_model.dart';
import 'package:flutter_app_scarb/features/registration/domain/repositories/registration_repository.dart';
import 'package:flutter_app_scarb/features/sign_in/data/models/sign_in_model.dart';

class RegistrationRepositoryImpl extends RegistrationRepository {
  final RegistrationRemoteDataSource remoteDataSource;

  RegistrationRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<ErrorModel, RegistrationModel>> registrationUser(
      {required String email,
      required String password,
      required String inviteCode}) async {
    return await remoteDataSource
        .registrationUser(
      email: email,
      inviteCode: inviteCode,
      password: password,
    )
        .guard((data) {
      RegistrationModel model =
          RegistrationModel.fromJson(data as Map<String, dynamic>);

      return model;
    });
  }

  @override
  Future<Either<ErrorModel, SignInModel>> signIn({
    required String email,
    required String password,
  }) async {
    return await remoteDataSource
        .signIn(
      email: email,
      password: password,
    )
        .guard((data) {
      SignInModel model = SignInModel.fromJson(data as Map<String, dynamic>);

      return model;
    });
  }
}
