import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/core/network/request_handler.dart';
import 'package:flutter_app_scarb/features/profile_settings/data/datasources/profile_settings_remote_data_source.dart';
import 'package:flutter_app_scarb/features/profile_settings/data/models/profile_settings_model.dart';
import 'package:flutter_app_scarb/features/profile_settings/domain/repositories/profile_settings_repository.dart';

class ProfileSettingsRepositoryImpl extends ProfileSettingsRepository {
  final ProfileSettingsRemoteDataSource remoteDataSource;

  ProfileSettingsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<ErrorModel, ProfileSettingsModel>> getProfileSettings() async {
    return await remoteDataSource.getProfileSettings().guard((data) {
      ProfileSettingsModel model =
          ProfileSettingsModel.fromJson(data as Map<String, dynamic>);

      return model;
    });
  }

  @override
  Future<Either<ErrorModel, ProfileSettingsModel>> updateProfileSettings(
      ProfileSettingsModel profile) async {
    return await remoteDataSource.updateProfileSettings(profile).guard((data) {
      ProfileSettingsModel model =
          ProfileSettingsModel.fromJson(data as Map<String, dynamic>);

      return model;
    });
  }

  @override
  Future<Either<ErrorModel, void>> deleteProfile() async {
    return await remoteDataSource.deleteProfile().guard((data) {});
  }
}
