import 'package:flutter_app_scarb/features/forgot_password/data/datasources/forgot_password_local_datasource.dart';
import 'package:flutter_app_scarb/features/forgot_password/data/datasources/forgot_password_remote_data_source.dart';
import 'package:flutter_app_scarb/features/forgot_password/data/repositories/forgot_password_local_repository_impl.dart';
import 'package:flutter_app_scarb/features/forgot_password/data/repositories/forgot_password_repository_impl.dart';
import 'package:flutter_app_scarb/features/forgot_password/domain/repositories/forgot_password_local_repository.dart';
import 'package:flutter_app_scarb/features/forgot_password/domain/repositories/forgot_password_repository.dart';
import 'package:flutter_app_scarb/features/forgot_password/domain/usecases/restore_password_usecase.dart';
import 'package:flutter_app_scarb/features/forgot_password/domain/usecases/store_email_for_restore_local_usecase.dart';

import '../../injection_container.dart';

mixin ForgotPasswordInjector on Injector {
  @override
  Future<void> init() async {
    await super.init();

    // forgot password repository
    sl.registerLazySingleton<ForgotPasswordRepository>(
      () => ForgotPasswordRepositoryImpl(forgotPasswordRemoteDataSource: sl()),
    );
    sl.registerFactory<ForgotPasswordLocalRepository>(
      () => ForgotPasswordLocalRepositoryImpl(
          forgotPasswordDatasource: sl<ForgotPasswordDatasource>()),
    );

    //forgot password dataSources
    sl.registerLazySingleton<ForgotPasswordRemoteDataSource>(
      () => ForgotPasswordRemoteDataSourceImpl(),
    );
    sl.registerLazySingleton<ForgotPasswordDatasource>(
      () => ForgotPasswordDatasourceImpl(sharedPreferences: sl()),
    );

    //forgot password useCase
    sl.registerLazySingleton(
        () => RestorePasswordUsecase(sl<ForgotPasswordRepository>()));
    sl.registerLazySingleton(() =>
        StoreEmailForRestoreLocalUsecase(sl<ForgotPasswordLocalRepository>()));
  }
}
