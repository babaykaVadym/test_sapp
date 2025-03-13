import 'package:dartz/dartz.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/features/onboarding/data/model/onbording_models.dart';
import 'package:flutter_app_scarb/features/onboarding/domain/repositories/onboarding_repository.dart';

class UpdateOnboardingDataUseCase {
  final OnboardingRepository onboardingRepository;

  const UpdateOnboardingDataUseCase(this.onboardingRepository);

  Future<Either<ErrorModel, ProfileModel>> updateOnbordingProfile(
      ProfileModel profileModel) async {
    return await onboardingRepository.updateOnbordingProfile(profileModel);
  }
}
