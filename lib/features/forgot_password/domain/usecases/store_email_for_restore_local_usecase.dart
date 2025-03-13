import 'package:flutter_app_scarb/features/forgot_password/domain/repositories/forgot_password_local_repository.dart';

class StoreEmailForRestoreLocalUsecase {
  final ForgotPasswordLocalRepository forgotPasswordLocalRepository;

  const StoreEmailForRestoreLocalUsecase(this.forgotPasswordLocalRepository);

  Future<void> storeEmailForRestore(String email) async {
    return await forgotPasswordLocalRepository.storeEmailForRestore(email);
  }
}
