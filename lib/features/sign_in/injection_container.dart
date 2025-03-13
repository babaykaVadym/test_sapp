import 'package:flutter_app_scarb/features/sign_in/data/datasources/sign_in_local_datasource.dart';
import 'package:flutter_app_scarb/features/sign_in/data/datasources/sign_in_remote_data_source.dart';
import 'package:flutter_app_scarb/features/sign_in/data/repositories/sign_in_local_repository_impl.dart';
import 'package:flutter_app_scarb/features/sign_in/data/repositories/sign_in_repository_impl.dart';
import 'package:flutter_app_scarb/features/sign_in/domain/repositories/sign_in_local_repository.dart';
import 'package:flutter_app_scarb/features/sign_in/domain/repositories/sign_in_repository.dart';
import 'package:flutter_app_scarb/features/sign_in/domain/usecases/sign_in_set_token_local_usecase.dart';
import 'package:flutter_app_scarb/features/sign_in/domain/usecases/sign_in_usecase.dart';

import '../../injection_container.dart';

mixin SignInInjector on Injector {
  @override
  Future<void> init() async {
    await super.init();

    //SignIn repository
    sl.registerLazySingleton<SignInRepository>(
      () => SignInRepositoryImpl(remoteDataSource: sl()),
    );
    sl.registerFactory<SignInLocalRepository>(
      () => SignInLocalRepositoryImpl(signInLocalDatasource: sl()),
    );

    //SignIn dataSources
    sl.registerLazySingleton<SignInRemoteDataSource>(
      () => SignInRemoteDataSourceImpl(),
    );
    sl.registerLazySingleton<SignInLocalDatasource>(
      () => SignInLocalDatasourceImpl(sharedPreferences: sl()),
    );

    //SignIn useCase
    sl.registerLazySingleton(() => SignInUsecase(sl<SignInRepository>()));
    sl.registerLazySingleton(
        () => SignInSetTokenLocalUsecase(sl<SignInLocalRepository>()));
  }
}
