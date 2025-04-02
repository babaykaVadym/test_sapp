import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/check_restore_email/presentation/screens/check_restore_email_screen.dart';
import 'package:flutter_app_scarb/features/emotion_state/presentation/screens/emotion_state_screen.dart';
import 'package:flutter_app_scarb/features/forgot_password/presentation/screens/forgot_password_screen.dart';
import 'package:flutter_app_scarb/features/ideas_settings/presentation/screens/ideas_settings_screen.dart';
import 'package:flutter_app_scarb/features/intro/presentation/screens/intro_screen.dart';
import 'package:flutter_app_scarb/features/navigation_bar/app_bottom_navigation_bar.dart';
import 'package:flutter_app_scarb/features/new_password/presentation/screens/new_password_screen.dart';
import 'package:flutter_app_scarb/features/notifications_settings/presentation/screens/notifications_settings_screen.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:flutter_app_scarb/features/personal_settings/presentation/screens/personal_settings_screen.dart';
import 'package:flutter_app_scarb/features/profile_settings/presentation/screens/profile_settings_screen.dart';
import 'package:flutter_app_scarb/features/questionnaire/enums/survey_types.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/screens/questionnaire_screen.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/presentation/screens/questionnaire_without_diagnosis_screen.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis_pages/presentation_define/questionnaire_define_state_screen.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis_pages/presentation_init/questionnaire_init_screen.dart';
import 'package:flutter_app_scarb/features/registration/presentation/screens/registration_screen.dart';
import 'package:flutter_app_scarb/features/result_determination_diagnosis/presentation/screens/result_determination_diagnosis_screen.dart';
import 'package:flutter_app_scarb/features/sign_in/presentation/screens/sign_in_screen.dart';
import 'package:flutter_app_scarb/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter_app_scarb/features/start_questionnaire/presentation/start_questionnaire_screen.dart';
import 'package:flutter_app_scarb/features/start_questionnaire_select_state/presentation/start_questionnaire_select_state_screen.dart';
import 'package:flutter_app_scarb/features/want_work_on/presentation/want_work_on_screen.dart';
import 'package:go_router/go_router.dart';

//test
final rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: Routes.splashPath,

  // sl<IntroCubit>().state.introStatus == IntroStatus.notShowed
  //     ? '/intro'
  //     : '/',
  routes: [
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: Routes.introPath,
      pageBuilder: (context, state) => customPageTransition(
        const IntroScreen(),
        state,
      ),
    ),
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: Routes.splashPath,
      pageBuilder: (context, state) => customPageTransition(
        const SplashScreen(),
        state,
      ),
    ),

    GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: Routes.homePath,
        pageBuilder: (context, state) => customPageTransition(
              const AppBottomNavigationBar(),
              state,
            ),
        routes: [
          GoRoute(
            parentNavigatorKey: rootNavigatorKey,
            path: Routes.profileSettingsPath,
            pageBuilder: (context, state) => customPageTransition(
              const ProfileSettingsScreen(),
              state,
            ),
          ),
          GoRoute(
            parentNavigatorKey: rootNavigatorKey,
            path: Routes.personalSettingsPath,
            pageBuilder: (context, state) => customPageTransition(
              const PersonalSettingsScreen(),
              state,
            ),
          ),
          GoRoute(
            parentNavigatorKey: rootNavigatorKey,
            path: Routes.notificationsSettingsPath,
            pageBuilder: (context, state) => customPageTransition(
              const NotificationsSettingsScreen(),
              state,
            ),
          ),
          GoRoute(
            parentNavigatorKey: rootNavigatorKey,
            path: Routes.ideasSettingsPath,
            pageBuilder: (context, state) => customPageTransition(
              const IdeasSettingsScreen(),
              state,
            ),
          ),
        ]),
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: Routes.newPasswordPath,
      pageBuilder: (context, state) => customPageTransition(
        const NewPasswordScreen(),
        state,
      ),
    ),
    GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: Routes.forgotPasswordPath,
        pageBuilder: (context, state) => customPageTransition(
              const ForgotPasswordScreen(),
              state,
            ),
        routes: [
          GoRoute(
            parentNavigatorKey: rootNavigatorKey,
            path: Routes.checkEmailPath,
            pageBuilder: (context, state) => customPageTransition(
              const CheckRestoreEmailScreen(),
              state,
            ),
          ),
        ]),
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: Routes.onboardingPath,
      pageBuilder: (context, state) => customPageTransition(
        const OnboardingScreen(),
        state,
      ),
    ),
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: Routes.signUpPath,
      pageBuilder: (context, state) => customPageTransition(
        const RegistrationScreen(),
        state,
      ),
    ),
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: Routes.signInPath,
      pageBuilder: (context, state) => customPageTransition(
        const SignInScreen(),
        state,
      ),
    ),
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: Routes.questionnairePath,
      pageBuilder: (context, state) {
        final String surveyTypes =
            state.extra as String? ?? SurveyTypes.depression.key;

        return customPageTransition(
          QuestionnaireScreen(
            surveyTypes: surveyTypes,
          ),
          state,
        );
      },
    ),
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: Routes.emotionStatePath,
      pageBuilder: (context, state) => customPageTransition(
        const EmotionStateScreen(),
        state,
      ),
    ),

    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: Routes.resultDeterminationPath,
      pageBuilder: (context, state) => customPageTransition(
        const ResultDeterminationDiagnosisScreen(),
        state,
      ),
    ),
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: Routes.wantWorkOnPath,
      pageBuilder: (context, state) => customPageTransition(
        const WantWorkOnScreen(),
        state,
      ),
    ),
    GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: Routes.startQuestionnairePath,
        pageBuilder: (context, state) => customPageTransition(
              const StartQuestionnaireScreen(),
              state,
            ),
        routes: [
          GoRoute(
            parentNavigatorKey: rootNavigatorKey,
            path: Routes.selectStatePath,
            pageBuilder: (context, state) => customPageTransition(
              const StartQuestionnaireSelectStateScreen(),
              state,
            ),
          ),
          GoRoute(
            parentNavigatorKey: rootNavigatorKey,
            path: Routes.questionnaireDefinenPath,
            pageBuilder: (context, state) => customPageTransition(
              const QuestionnaireDefineStateScreen(),
              state,
            ),
          ),
        ]),

    GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: Routes.questionnaireInitPath,
        pageBuilder: (context, state) => customPageTransition(
              const QuestionnaireInitScreen(),
              state,
            ),
        routes: [
          GoRoute(
            parentNavigatorKey: rootNavigatorKey,
            path: Routes.questionnaireWithoutDiagnosisPath,
            pageBuilder: (context, state) => customPageTransition(
              const QuestionnaireWithoutDiagnosisScreen(),
              state,
            ),
          ),
        ]),

    //
  ],
);

customPageTransition(page, GoRouterState state, {bool maintainState = false}) {
  return CustomTransitionPage(
    key: state.pageKey,
    transitionDuration: const Duration(milliseconds: 300),
    reverseTransitionDuration: const Duration(milliseconds: 300),
    child: page,
    maintainState: maintainState,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
        child: child,
      );
    },
  );
}

sealed class Routes {
  Routes._();

  // Route paths
  static const String splashPath = '/';
  static const String homePath = '/home';
  static const String introPath = '/intro';
  static const String onboardingPath = '/onboarding';
  static const String signUpPath = '/signup';
  static const String signInPath = '/signin';
  static const String questionnairePath = '/questionnaire';
  static const String emotionStatePath = '/emation_state';
  static const String forgotPasswordPath = '/forgot_password';
  static const String checkEmailPath = '/check_email';
  static const String newPasswordPath = '/new_password';
  static const String resultDeterminationPath = '/result_determination';
  static const String questionnaireDefinenPath = '/questionnaire_define';
  static const String questionnaireInitPath = '/questionnaire_init';
  static const String selectStatePath = '/select_state';
  static const String startQuestionnairePath = '/start_questionnaire';
  static const String wantWorkOnPath = '/want_work_on';
  static const String questionnaireWithoutDiagnosisPath =
      '/questionnaire_without_diagnosis';

  //Account settings
  static const String profileSettingsPath = '/profile_settings';
  static const String personalSettingsPath = '/personal_settings';
  static const String notificationsSettingsPath = '/notifications_settings';
  static const String ideasSettingsPath = '/ideas_settings';
}
