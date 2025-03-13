import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/splash/data/models/splash_model.dart';
import 'package:flutter_app_scarb/features/splash/domain/repositories/splash_remote_repository.dart';

class RefreshTokentRemoteUsecase {
  final SplashRemoteRepository splashRemoteRepository;

  const RefreshTokentRemoteUsecase(this.splashRemoteRepository);

  Future<Either<ErrorModel, AuthModel>> refreshToken(String token) async {
    return await splashRemoteRepository.refreshToken(token);
  }
}
