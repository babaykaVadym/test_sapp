import 'package:flutter_app_scarb/features/profile_settings/data/datasources/profile_settings_remote_data_source.dart';
import 'package:flutter_app_scarb/features/profile_settings/data/repositories/profile_settings_repository_impl.dart';
import 'package:flutter_app_scarb/features/profile_settings/domain/repositories/profile_settings_repository.dart';
import 'package:flutter_app_scarb/features/profile_settings/domain/usecases/delete_profile_data_usecase.dart';
import 'package:flutter_app_scarb/features/profile_settings/domain/usecases/get_profile_settings_data_usecase.dart';
import 'package:flutter_app_scarb/features/profile_settings/domain/usecases/update_profile_settings_data_usecase.dart';

import '../../injection_container.dart';

mixin ProfileSettingsInjector on Injector {
  @override
  Future<void> init() async {
    await super.init();

    // personal settings repository
    sl.registerLazySingleton<ProfileSettingsRepository>(
      () => ProfileSettingsRepositoryImpl(remoteDataSource: sl()),
    );

    //personal settings dataSources
    sl.registerLazySingleton<ProfileSettingsRemoteDataSource>(
      () => ProfileSettingsRemoteDataSourceImpl(),
    );

    //personal settings useCase
    sl.registerLazySingleton(() =>
        UpdateProfileSettingsDataUsecase(sl<ProfileSettingsRepository>()));
    sl.registerLazySingleton(
        () => GetProfileSettingsDataUsecase(sl<ProfileSettingsRepository>()));
    sl.registerLazySingleton(
        () => DeleteProfileDataUsecase(sl<ProfileSettingsRepository>()));
  }
}
