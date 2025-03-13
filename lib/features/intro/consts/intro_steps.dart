import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';

import '../presentation/models/onboarding_step.dart';

final List<OnboardingStep> onboardingSteps = [
  OnboardingStep(
    title: LocaleKeys.helloIMSky.tr(),
    subtitle: LocaleKeys.hereToHelpTrackEmotions.tr(),
  ),
  OnboardingStep(
    title: LocaleKeys.togetherForABetterLife.tr(),
    subtitle: LocaleKeys.leaveWishesInApp.tr(),
  ),
];
