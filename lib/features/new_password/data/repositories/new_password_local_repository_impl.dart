import 'package:flutter_app_scarb/features/new_password/data/datasources/new_password_local_datasource.dart';
import 'package:flutter_app_scarb/features/new_password/domain/repositories/new_password_local_repository.dart';

class NewPasswordLocalRepositoryImpl implements NewPasswordLocalRepository {
  final NewPasswordLocalDatasource newPasswordLocalDatasource;

  NewPasswordLocalRepositoryImpl({required this.newPasswordLocalDatasource});

  @override
  Future<void> clearEmailForRestore() async {
    await newPasswordLocalDatasource.clearEmailForRestore();
  }

  @override
  Future<String?> getEmailForRestore() async {
    return await newPasswordLocalDatasource.getEmailForRestore();
  }
}
