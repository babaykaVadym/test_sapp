import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/config/app_config.dart';
import 'package:flutter_app_scarb/core/error/error_handler_util.dart';
import 'package:flutter_app_scarb/core/utils/bloc_observer.dart';
import 'package:flutter_app_scarb/features/intro/presentation/cubits/intro_cubit.dart';
import 'package:flutter_app_scarb/flavors.dart';
import 'package:flutter_app_scarb/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:widgets_library/core/styles/colors.dart';

import 'app.dart';

FutureOr<void> main() async {
  AppConfig.initConfig(F.name ?? "dev");

  runZonedGuarded(
    () async {
      WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      await EasyLocalization.ensureInitialized();

      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

      await InjectionContainer().init();

      await sl<IntroCubit>().getIntroStatus();
      Bloc.observer = AppBlocObserver();

      runApp(
        EasyLocalization(
          supportedLocales: const [Locale('uk')],
          path: 'assets/translations',
          fallbackLocale: const Locale('uk'),
          child: const ClrThemeWidget(
            isDarkTheme: false,
            child: MyApp(),
          ),
        ),
      );
    },
    (Object error, StackTrace stack) {
      ErrorHandler.catchError(error, stack);
    },
  );
}
