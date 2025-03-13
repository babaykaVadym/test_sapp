import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/profile_settings/data/models/profile_settings_model.dart';
import 'package:flutter_app_scarb/features/profile_settings/domain/repositories/profile_settings_repository.dart';

class UpdateProfileSettingsDataUsecase {
  final ProfileSettingsRepository profileSettingsRepository;

  const UpdateProfileSettingsDataUsecase(this.profileSettingsRepository);

  Future<Either<ErrorModel, ProfileSettingsModel>> updateProfileSettings(
      ProfileSettingsModel profileModel) async {
    return await profileSettingsRepository.updateProfileSettings(profileModel);
  }
}
