import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/personal_settings/data/models/personal_settings_model.dart';

abstract class PersonalSettingsRepository {
  Future<Either<ErrorModel, PersonalProfileModel>> getPersonalProfile();
  Future<Either<ErrorModel, PersonalProfileModel>> updatePersonalProfile(
      PersonalProfileModel profile);
}
