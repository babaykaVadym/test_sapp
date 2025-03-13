import 'package:flutter_app_scarb/features/sign_in/data/datasources/sign_in_local_datasource.dart';
import 'package:flutter_app_scarb/features/sign_in/domain/repositories/sign_in_local_repository.dart';

class SignInLocalRepositoryImpl implements SignInLocalRepository {
  final SignInLocalDatasource signInLocalDatasource;

  SignInLocalRepositoryImpl({required this.signInLocalDatasource});

  @override
  Future<void> setRefreshToken(String token) async {
    await signInLocalDatasource.setRefreshToken(token);
  }
}
