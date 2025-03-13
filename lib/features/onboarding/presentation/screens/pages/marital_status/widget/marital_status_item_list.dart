import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_app_scarb/features/onboarding/data/model/onbording_models.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';

final List<OnboardingStepItem> maritalStatusItemList = [
  OnboardingStepItem(
    label: LocaleKeys.onboarding_married.tr(),
    value: 'married',
  ),
  OnboardingStepItem(
    label: LocaleKeys.onboarding_inRelationship.tr(),
    value: 'in_relationship',
  ),
  OnboardingStepItem(
    label: LocaleKeys.onboarding_otherBtn.tr(),
    value: 'engaged',
  ),
  OnboardingStepItem(
    label: LocaleKeys.onboarding_single.tr(),
    value: 'single',
  ),
  OnboardingStepItem(
    label: LocaleKeys.onboarding_complicated.tr(),
    value: 'complicated',
  ),
  OnboardingStepItem(
    label: LocaleKeys.onboarding_heartbroken.tr(),
    value: 'heartbroken',
  ),
];
