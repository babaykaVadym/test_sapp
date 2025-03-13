import 'package:flutter_app_scarb/features/splash/data/datasources/splash_local_datasource.dart';
import 'package:flutter_app_scarb/features/splash/domain/repositories/splash_local_repository.dart';

class SplashLocalRepositoryImpl implements SplashLocalRepository {
  final SplashLocalDatasource splashLocalDatasource;

  SplashLocalRepositoryImpl({required this.splashLocalDatasource});

  @override
  Future<String?> getRefreshToken() async {
    return await splashLocalDatasource.getRefreshToken();
  }

  @override
  Future<void> setRefreshToken(String token) async {
    await splashLocalDatasource.setRefreshToken(token);
  }

  @override
  Future<void> deleteToken() async {
    await splashLocalDatasource.deleteToken();
  }
}
