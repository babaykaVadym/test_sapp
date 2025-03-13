import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/core/network/request_handler.dart';
import 'package:flutter_app_scarb/features/sign_in/data/datasources/sign_in_remote_data_source.dart';
import 'package:flutter_app_scarb/features/sign_in/data/models/sign_in_model.dart';
import 'package:flutter_app_scarb/features/sign_in/domain/repositories/sign_in_repository.dart';

class SignInRepositoryImpl extends SignInRepository {
  final SignInRemoteDataSource remoteDataSource;

  SignInRepositoryImpl({required this.remoteDataSource});

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
