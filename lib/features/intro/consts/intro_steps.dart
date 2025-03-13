import 'package:easy_localization/easy_localization.dart';

import '../../../core/translations/local_keys.g.dart';
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
