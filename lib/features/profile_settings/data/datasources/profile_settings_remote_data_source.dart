import 'package:dio/dio.dart';
import 'package:flutter_app_scarb/core/network/endpoints.dart';
import 'package:flutter_app_scarb/features/profile_settings/data/models/profile_settings_model.dart';

import '../../../../core/network/rest_client.dart';
import '../../../../injection_container.dart';

abstract class ProfileSettingsRemoteDataSource {
  Future<Response> getProfileSettings();
  Future<Response> updateProfileSettings(ProfileSettingsModel profile);
  Future<Response> deleteProfile();
}

class ProfileSettingsRemoteDataSourceImpl
    implements ProfileSettingsRemoteDataSource {
  final DioClient dioClient = sl<DioClient>();

  ProfileSettingsRemoteDataSourceImpl();

  @override
  Future<Response> getProfileSettings() async {
    final response = await dioClient.get(
      ApiType.protected,
      EndPoints.profile,
    );

    return response;
  }

  @override
  Future<Response> updateProfileSettings(ProfileSettingsModel profile) async {
    final response = await dioClient.patch(
      ApiType.protected,
      EndPoints.profile,
      profile.toJson(),
    );
    return response;
  }

  @override
  Future<Response> deleteProfile() async {
    final response = await dioClient.delete(
      ApiType.protected,
      EndPoints.profile,
    );

    return response;
  }
}
