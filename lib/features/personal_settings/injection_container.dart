import 'package:flutter_app_scarb/features/personal_settings/data/datasources/personal_settings_remote_data_source.dart';
import 'package:flutter_app_scarb/features/personal_settings/data/repositories/personal_settings_repository_impl.dart';
import 'package:flutter_app_scarb/features/personal_settings/domain/repositories/personal_settings_repository.dart';
import 'package:flutter_app_scarb/features/personal_settings/domain/usecases/get_personal_settings_data_usecase.dart';
import 'package:flutter_app_scarb/features/personal_settings/domain/usecases/update_personal_settings_data_usecase.dart';

import '../../injection_container.dart';

mixin PersonalSettingsInjector on Injector {
  @override
  Future<void> init() async {
    await super.init();

    // personal settings repository
    sl.registerLazySingleton<PersonalSettingsRepository>(
      () => PersonalSettingsRepositoryImpl(remoteDataSource: sl()),
    );

    //personal settings dataSources
    sl.registerLazySingleton<PersonalSettingsRemoteDataSource>(
      () => PersonalSettingsRemoteDataSourceImpl(),
    );

    //personal settings useCase
    sl.registerLazySingleton(() =>
        UpdatePersonalSettingsDataUsecase(sl<PersonalSettingsRepository>()));
    sl.registerLazySingleton(
        () => GetPersonalSettingsDataUsecase(sl<PersonalSettingsRepository>()));
  }
}
