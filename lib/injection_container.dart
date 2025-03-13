import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/network/rest_client.dart';
import 'package:flutter_app_scarb/features/forgot_password/injection_container.dart';
import 'package:flutter_app_scarb/features/intro/injection_container.dart';
import 'package:flutter_app_scarb/features/new_password/injection_container.dart';
import 'package:flutter_app_scarb/features/onboarding/injection_container.dart';
import 'package:flutter_app_scarb/features/personal_settings/injection_container.dart';
import 'package:flutter_app_scarb/features/profile_settings/injection_container.dart';
import 'package:flutter_app_scarb/features/questionnaire/injection_container.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/injection_container.dart';
import 'package:flutter_app_scarb/features/registration/injection_container.dart';
import 'package:flutter_app_scarb/features/sign_in/injection_container.dart';
import 'package:flutter_app_scarb/features/splash/injection_container.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

class InjectionContainer extends Injector
    with
        IntroInjector,
        OnboardingInjector,
        RegistrationInjector,
        SignInInjector,
        SplashAuthInjector,
        QuestionnaireInjector,
        ForgotPasswordInjector,
        QuestionnaireWithoutDiagnosisInjector,
        NewPasswordInjector,
        PersonalSettingsInjector,
        ProfileSettingsInjector {}

abstract class Injector {
  @mustCallSuper
  Future<void> init() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

    //Dio
    sl.registerLazySingleton<DioClient>(() => DioClient());
    sl.registerLazySingleton<Dio>(() => Dio());
  }
}
