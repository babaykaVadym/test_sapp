import 'package:flutter_app_scarb/features/new_password/domain/repositories/new_password_local_repository.dart';

class ClearEmailNewPasswordUsecase {
  final NewPasswordLocalRepository newPasswordLocalRepository;

  const ClearEmailNewPasswordUsecase(this.newPasswordLocalRepository);

  Future<void> clearEmailForRestore() async {
    return await newPasswordLocalRepository.clearEmailForRestore();
  }
}
