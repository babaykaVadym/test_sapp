import 'package:flutter_app_scarb/features/registration/data/datasources/registration_local_datasource.dart';
import 'package:flutter_app_scarb/features/registration/data/datasources/registration_remote_data_source.dart';
import 'package:flutter_app_scarb/features/registration/data/repositories/registration_local_repository_impl.dart';
import 'package:flutter_app_scarb/features/registration/data/repositories/registration_repository_impl.dart';
import 'package:flutter_app_scarb/features/registration/domain/repositories/registration_local_repository.dart';
import 'package:flutter_app_scarb/features/registration/domain/repositories/registration_repository.dart';
import 'package:flutter_app_scarb/features/registration/domain/usecases/registration_login_user_usecase.dart';
import 'package:flutter_app_scarb/features/registration/domain/usecases/registration_set_token_local_usecase.dart';
import 'package:flutter_app_scarb/features/registration/domain/usecases/registration_user_data_usecase.dart';

import '../../injection_container.dart';

mixin RegistrationInjector on Injector {
  @override
  Future<void> init() async {
    await super.init();

    //Registration repository
    sl.registerLazySingleton<RegistrationRepository>(
      () => RegistrationRepositoryImpl(remoteDataSource: sl()),
    );
    sl.registerFactory<RegistrationLocalRepository>(
      () => RegistrationLocalRepositoryImpl(registrationLocalDatasource: sl()),
    );
    //Registration dataSources
    sl.registerLazySingleton<RegistrationRemoteDataSource>(
      () => RegistrationRemoteDataSourceImpl(),
    );
    sl.registerLazySingleton<RegistrationLocalDatasource>(
      () => RegistrationLocalDatasourceImpl(sharedPreferences: sl()),
    );

    //Registration useCase
    sl.registerLazySingleton(
        () => RegistrationUserDataUsecase(sl<RegistrationRepository>()));
    sl.registerLazySingleton(
        () => RegistrationLoginUserUsecase(sl<RegistrationRepository>()));
    sl.registerLazySingleton(() =>
        RegistrationSetTokenLocalUsecase(sl<RegistrationLocalRepository>()));
  }
}
