import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/profile_settings/domain/repositories/profile_settings_repository.dart';

class DeleteProfileDataUsecase {
  final ProfileSettingsRepository profileSettingsRepository;

  const DeleteProfileDataUsecase(this.profileSettingsRepository);

  Future<Either<ErrorModel, void>> deleteProfile() async {
    return await profileSettingsRepository.deleteProfile();
  }
}
