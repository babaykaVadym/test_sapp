import '../../injection_container.dart';
import 'data/datasource/intro_local_datasource.dart';
import 'data/repositories/intro_local_repository_impl.dart';
import 'domain/repositories/intro_local_repository.dart';
import 'presentation/cubits/intro_cubit.dart';

mixin IntroInjector on Injector {
  @override
  Future<void> init() async {
    await super.init();

    // cubits
    sl.registerLazySingleton<IntroCubit>(
      () => IntroCubit(localRepository: sl()),
    );

    // repositories
    sl.registerFactory<IntroLocalRepository>(
      () => IntroLocalRepositoryImpl(introLocalDatasource: sl()),
    );

    // data sources
    sl.registerFactory<IntroLocalDatasource>(
      () => IntroLocalDatasourceImpl(sharedPreferences: sl()),
    );
  }
}
