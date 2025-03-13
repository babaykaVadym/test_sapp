import 'package:dio/dio.dart';
import 'package:flutter_app_scarb/core/network/endpoints.dart';
import 'package:flutter_app_scarb/features/personal_settings/data/models/personal_settings_model.dart';

import '../../../../core/network/rest_client.dart';
import '../../../../injection_container.dart';

abstract class PersonalSettingsRemoteDataSource {
  Future<Response> getPersonalProfile();
  Future<Response> updatePersonalProfile(PersonalProfileModel profile);
}

class PersonalSettingsRemoteDataSourceImpl
    implements PersonalSettingsRemoteDataSource {
  final DioClient dioClient = sl<DioClient>();

  PersonalSettingsRemoteDataSourceImpl();

  @override
  Future<Response> getPersonalProfile() async {
    final response = await dioClient.get(
      ApiType.protected,
      EndPoints.profile,
    );

    return response;
  }

  @override
  Future<Response> updatePersonalProfile(PersonalProfileModel profile) async {
    final response = await dioClient.patch(
      ApiType.protected,
      EndPoints.profile,
      profile.toJson(),
    );
    return response;
  }
}
