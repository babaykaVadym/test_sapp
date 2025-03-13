import 'package:flutter_app_scarb/features/registration/data/datasources/registration_local_datasource.dart';
import 'package:flutter_app_scarb/features/registration/domain/repositories/registration_local_repository.dart';

class RegistrationLocalRepositoryImpl implements RegistrationLocalRepository {
  final RegistrationLocalDatasource registrationLocalDatasource;

  RegistrationLocalRepositoryImpl({required this.registrationLocalDatasource});

  @override
  Future<void> setRefreshToken(String token) async {
    await registrationLocalDatasource.setRefreshToken(token);
  }
}
