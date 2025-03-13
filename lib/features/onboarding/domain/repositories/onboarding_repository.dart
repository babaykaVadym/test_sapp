import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/onboarding/data/model/onbording_models.dart';

abstract class OnboardingRepository {
  Future<Either<ErrorModel, ProfileModel>> updateOnbordingProfile(
      ProfileModel profile);
}
