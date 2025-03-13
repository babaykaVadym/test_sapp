import 'package:flutter_app_scarb/features/new_password/domain/repositories/new_password_local_repository.dart';

class GetEmailNewPasswordUsecase {
  final NewPasswordLocalRepository newPasswordLocalRepository;

  const GetEmailNewPasswordUsecase(this.newPasswordLocalRepository);

  Future<String?> getEmailForRestore() async {
    return await newPasswordLocalRepository.getEmailForRestore();
  }
}
