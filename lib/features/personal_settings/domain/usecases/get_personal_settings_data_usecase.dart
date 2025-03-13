import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/personal_settings/data/models/personal_settings_model.dart';
import 'package:flutter_app_scarb/features/personal_settings/domain/repositories/personal_settings_repository.dart';

class GetPersonalSettingsDataUsecase {
  final PersonalSettingsRepository personalSettingsRepository;

  const GetPersonalSettingsDataUsecase(this.personalSettingsRepository);

  Future<Either<ErrorModel, PersonalProfileModel>> getPersonalProfile() async {
    return await personalSettingsRepository.getPersonalProfile();
  }
}
