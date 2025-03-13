import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/core/network/request_handler.dart';
import 'package:flutter_app_scarb/features/personal_settings/data/datasources/personal_settings_remote_data_source.dart';
import 'package:flutter_app_scarb/features/personal_settings/data/models/personal_settings_model.dart';
import 'package:flutter_app_scarb/features/personal_settings/domain/repositories/personal_settings_repository.dart';

class PersonalSettingsRepositoryImpl extends PersonalSettingsRepository {
  final PersonalSettingsRemoteDataSource remoteDataSource;

  PersonalSettingsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<ErrorModel, PersonalProfileModel>> getPersonalProfile() async {
    return await remoteDataSource.getPersonalProfile().guard((data) {
      PersonalProfileModel model =
          PersonalProfileModel.fromJson(data as Map<String, dynamic>);

      return model;
    });
  }

  @override
  Future<Either<ErrorModel, PersonalProfileModel>> updatePersonalProfile(
      PersonalProfileModel profile) async {
    return await remoteDataSource.updatePersonalProfile(profile).guard((data) {
      PersonalProfileModel model =
          PersonalProfileModel.fromJson(data as Map<String, dynamic>);

      return model;
    });
  }
}
