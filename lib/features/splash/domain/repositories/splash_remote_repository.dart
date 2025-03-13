import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/splash/data/models/splash_model.dart';

abstract class SplashRemoteRepository {
  Future<Either<ErrorModel, AuthModel>> refreshToken(String token);
}
