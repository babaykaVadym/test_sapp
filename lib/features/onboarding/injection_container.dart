import 'package:flutter_app_scarb/features/onboarding/data/datasources/onboarding_remote_data_source.dart';
import 'package:flutter_app_scarb/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:flutter_app_scarb/features/onboarding/domain/repositories/onboarding_repository.dart';
import 'package:flutter_app_scarb/features/onboarding/domain/usecases/update_onboarding_data_usecase.dart';

import '../../injection_container.dart';

mixin OnboardingInjector on Injector {
  @override
  Future<void> init() async {
    await super.init();

    // Onboard repository
    sl.registerLazySingleton<OnboardingRepository>(
      () => OnboardingRepositoryImpl(remoteDataSource: sl()),
    );

    //Onboard dataSources
    sl.registerLazySingleton<OnboardingRemoteDataSource>(
      () => OnboardingRemoteDataImpl(),
    );

    //Onboard useCase
    sl.registerLazySingleton(
        () => UpdateOnboardingDataUseCase(sl<OnboardingRepository>()));
  }
}
