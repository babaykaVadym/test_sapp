import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/config/app_config.dart';
import 'package:flutter_app_scarb/core/style/theme_colors/app_theme.dart';
import 'package:flutter_app_scarb/features/forgot_password/presentation/cubit/forgot_password_cubit.dart';
import 'package:flutter_app_scarb/features/navigation_bar/cubit/navigation_bar_cubit.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/presentation/cubit/questionnaire_without_diagnosis_cubit.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 5),
      () => FlutterNativeSplash.remove(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationBarCubit(),
        ),
        BlocProvider(
          create: (context) => ForgotPasswordCubit(),
        ),
        BlocProvider(
          create: (context) => QuestionnaireWithoutDiagnosisCubit(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        routerConfig: router,
        theme: themeData,
        builder: FToastBuilder(),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
//asdasd
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Home content',
            ),
            Text(
              'Home ${AppConfig.debugMode}',
            ),
            TextButton(
                onPressed: () {
                  context.push(Routes.startQuestionnairePath);
                },
                child: const Text('Go to startQuestionnairePath')),
            TextButton(
                onPressed: () {
                  context.push(
                    Routes.wantWorkOnPath,
                  );
                },
                child: const Text('Go to test'))
          ],
        ),
      ),
    );
  }
}
