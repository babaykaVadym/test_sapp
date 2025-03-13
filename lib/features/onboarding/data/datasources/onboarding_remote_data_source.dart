import 'package:dio/dio.dart';
import 'package:flutter_app_scarb/core/network/endpoints.dart';
import 'package:flutter_app_scarb/core/network/rest_client.dart';
import 'package:flutter_app_scarb/features/onboarding/data/model/onbording_models.dart';
import 'package:flutter_app_scarb/injection_container.dart';

abstract class OnboardingRemoteDataSource {
  Future<Response> updateOnbordingProfile(ProfileModel profile);
}

class OnboardingRemoteDataImpl implements OnboardingRemoteDataSource {
  final DioClient dioClient = sl<DioClient>();

  @override
  Future<Response> updateOnbordingProfile(ProfileModel profile) async {
    final response = await dioClient.patch(
      ApiType.protected,
      EndPoints.profile,
      profile.toJson(),
    );
    return response;
  }
}
