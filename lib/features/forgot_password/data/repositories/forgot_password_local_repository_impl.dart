import 'package:flutter_app_scarb/features/forgot_password/data/datasources/forgot_password_local_datasource.dart';
import 'package:flutter_app_scarb/features/forgot_password/domain/repositories/forgot_password_local_repository.dart';

class ForgotPasswordLocalRepositoryImpl
    implements ForgotPasswordLocalRepository {
  final ForgotPasswordDatasource forgotPasswordDatasource;

  ForgotPasswordLocalRepositoryImpl({required this.forgotPasswordDatasource});

  @override
  Future<void> storeEmailForRestore(String email) async {
    await forgotPasswordDatasource.storeEmailForRestore(email);
  }
}
