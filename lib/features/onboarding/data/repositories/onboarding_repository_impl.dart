import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/core/network/request_handler.dart';
import 'package:flutter_app_scarb/features/onboarding/data/datasources/onboarding_remote_data_source.dart';
import 'package:flutter_app_scarb/features/onboarding/data/model/onbording_models.dart';
import 'package:flutter_app_scarb/features/onboarding/domain/repositories/onboarding_repository.dart';

class OnboardingRepositoryImpl extends OnboardingRepository {
  final OnboardingRemoteDataSource remoteDataSource;

  OnboardingRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<ErrorModel, ProfileModel>> updateOnbordingProfile(
      ProfileModel profile) async {
    return await remoteDataSource.updateOnbordingProfile(profile).guard((data) {
      ProfileModel model = ProfileModel.fromJson(data as Map<String, dynamic>);

      return model;
    });
  }
}
