import 'package:flutter_app_scarb/features/new_password/data/datasources/new_password_local_datasource.dart';
import 'package:flutter_app_scarb/features/new_password/data/datasources/new_password_remote_data_source.dart';
import 'package:flutter_app_scarb/features/new_password/data/repositories/new_password_local_repository_impl.dart';
import 'package:flutter_app_scarb/features/new_password/data/repositories/new_password_repository_impl.dart';
import 'package:flutter_app_scarb/features/new_password/domain/repositories/new_password_local_repository.dart';
import 'package:flutter_app_scarb/features/new_password/domain/repositories/new_password_repository.dart';
import 'package:flutter_app_scarb/features/new_password/domain/usecases/clear_email_new_password_usecase.dart';
import 'package:flutter_app_scarb/features/new_password/domain/usecases/get_email_new_password_usecase.dart';
import 'package:flutter_app_scarb/features/new_password/domain/usecases/set_new_password_usecase.dart';

import '../../injection_container.dart';

mixin NewPasswordInjector on Injector {
  @override
  Future<void> init() async {
    await super.init();

    // new password repository
    sl.registerLazySingleton<NewPasswordRepository>(
      () => NewPasswordRepositoryImpl(newPasswordRemoteDataSource: sl()),
    );
    sl.registerFactory<NewPasswordLocalRepository>(
      () => NewPasswordLocalRepositoryImpl(newPasswordLocalDatasource: sl()),
    );

    //new password dataSources
    sl.registerLazySingleton<NewPasswordRemoteDataSource>(
      () => NewPasswordRemoteDataSourceImpl(),
    );
    sl.registerLazySingleton<NewPasswordLocalDatasource>(
      () => NewPasswordDatasourceImpl(sharedPreferences: sl()),
    );

    //new password useCase
    sl.registerLazySingleton(
        () => SetNewPasswordUsecase(sl<NewPasswordRepository>()));
    sl.registerLazySingleton(
        () => ClearEmailNewPasswordUsecase(sl<NewPasswordLocalRepository>()));
    sl.registerLazySingleton(
        () => GetEmailNewPasswordUsecase(sl<NewPasswordLocalRepository>()));
  }
}
