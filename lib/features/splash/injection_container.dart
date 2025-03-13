import 'package:flutter_app_scarb/features/splash/data/datasources/splash_local_datasource.dart';
import 'package:flutter_app_scarb/features/splash/data/datasources/splash_remote_data_source.dart';
import 'package:flutter_app_scarb/features/splash/data/repositories/splash_local_repository_impl.dart';
import 'package:flutter_app_scarb/features/splash/data/repositories/splash_remote_repository_impl.dart';
import 'package:flutter_app_scarb/features/splash/domain/repositories/splash_local_repository.dart';
import 'package:flutter_app_scarb/features/splash/domain/repositories/splash_remote_repository.dart';
import 'package:flutter_app_scarb/features/splash/domain/usecases/delete_token_local_usecase.dart';
import 'package:flutter_app_scarb/features/splash/domain/usecases/get_token_local_usecase.dart';
import 'package:flutter_app_scarb/features/splash/domain/usecases/refresh_tokent_remote_usecase.dart';
import 'package:flutter_app_scarb/features/splash/domain/usecases/set_token_local_usecase.dart';

import '../../injection_container.dart';

mixin SplashAuthInjector on Injector {
  @override
  Future<void> init() async {
    await super.init();

    // Splash repository
    sl.registerLazySingleton<SplashRemoteRepository>(
      () => SplashRepositoryImpl(splashRemoteDataSource: sl()),
    );
    sl.registerFactory<SplashLocalRepository>(
      () => SplashLocalRepositoryImpl(splashLocalDatasource: sl()),
    );

    //Splash dataSources
    sl.registerLazySingleton<SplashLocalDatasource>(
      () => SplashLocalDatasourceImpl(sharedPreferences: sl()),
    );
    sl.registerLazySingleton<SplashRemoteDataSource>(
      () => SplashRemoteDataSourceImpl(),
    );

    //Onboard useCase
    sl.registerLazySingleton(
        () => RefreshTokentRemoteUsecase(sl<SplashRemoteRepository>()));
    sl.registerLazySingleton(
        () => GetTokenLocalUsecase(sl<SplashLocalRepository>()));
    sl.registerLazySingleton(
        () => SetTokenLocalUsecase(sl<SplashLocalRepository>()));
    sl.registerLazySingleton(
        () => DeleteTokenLocalUsecase(sl<SplashLocalRepository>()));
  }
}
