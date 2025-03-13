import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/core/network/request_handler.dart';
import 'package:flutter_app_scarb/features/splash/data/datasources/splash_remote_data_source.dart';
import 'package:flutter_app_scarb/features/splash/data/models/splash_model.dart';
import 'package:flutter_app_scarb/features/splash/domain/repositories/splash_remote_repository.dart';

class SplashRepositoryImpl extends SplashRemoteRepository {
  final SplashRemoteDataSource splashRemoteDataSource;

  SplashRepositoryImpl({required this.splashRemoteDataSource});

  @override
  Future<Either<ErrorModel, AuthModel>> refreshToken(String token) async {
    return await splashRemoteDataSource.refreshToken(token).guard((data) {
      AuthModel model = AuthModel.fromJson(data as Map<String, dynamic>);

      return model;
    });
  }
}
