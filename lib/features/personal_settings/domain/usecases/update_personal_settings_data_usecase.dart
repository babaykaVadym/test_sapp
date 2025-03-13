import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/personal_settings/data/models/personal_settings_model.dart';
import 'package:flutter_app_scarb/features/personal_settings/domain/repositories/personal_settings_repository.dart';

class UpdatePersonalSettingsDataUsecase {
  final PersonalSettingsRepository personalSettingsRepository;

  const UpdatePersonalSettingsDataUsecase(this.personalSettingsRepository);

  Future<Either<ErrorModel, PersonalProfileModel>> updatePersonalProfile(
      PersonalProfileModel profileModel) async {
    return await personalSettingsRepository.updatePersonalProfile(profileModel);
  }
}
