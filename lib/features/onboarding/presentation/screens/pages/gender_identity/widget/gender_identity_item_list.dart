import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_app_scarb/features/onboarding/data/model/onbording_models.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';

final List<OnboardingStepItem> genderIndentityItemList = [
  OnboardingStepItem(
    label: LocaleKeys.onboarding_identifyAsWoman.tr(),
    value: 'woman',
  ),
  OnboardingStepItem(
    label: LocaleKeys.onboarding_identifyAsMan.tr(),
    value: 'man',
  ),
  OnboardingStepItem(
    label: LocaleKeys.onboarding_otherBtn.tr(),
    value: 'other',
  ),
];
