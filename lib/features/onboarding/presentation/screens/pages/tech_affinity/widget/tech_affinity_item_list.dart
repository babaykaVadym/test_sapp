import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_app_scarb/features/onboarding/data/model/onbording_models.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';

final List<OnboardingStepItem> techAffinityItemList = [
  OnboardingStepItem(
    label: LocaleKeys.onboarding_extremelyPositive.tr(),
    priorityValue: 5,
  ),
  OnboardingStepItem(
    label: LocaleKeys.onboarding_positive.tr(),
    priorityValue: 4,
  ),
  OnboardingStepItem(
    label: LocaleKeys.onboarding_neutral.tr(),
    priorityValue: 3,
  ),
  OnboardingStepItem(
    label: LocaleKeys.onboarding_liveTogether.tr(),
    priorityValue: 2,
  ),
  OnboardingStepItem(
    label: LocaleKeys.onboarding_negative.tr(),
    priorityValue: 1,
  ),
  OnboardingStepItem(
    label: LocaleKeys.onboarding_extremelyNegative.tr(),
    priorityValue: 0,
  ),
];
