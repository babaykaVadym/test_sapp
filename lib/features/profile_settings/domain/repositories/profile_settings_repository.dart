import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/profile_settings/data/models/profile_settings_model.dart';

abstract class ProfileSettingsRepository {
  Future<Either<ErrorModel, ProfileSettingsModel>> getProfileSettings();
  Future<Either<ErrorModel, void>> deleteProfile();
  Future<Either<ErrorModel, ProfileSettingsModel>> updateProfileSettings(
      ProfileSettingsModel model);
}
