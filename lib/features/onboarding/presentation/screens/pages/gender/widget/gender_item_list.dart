import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_app_scarb/features/onboarding/data/model/onbording_models.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';

final List<OnboardingStepItem> genderItemList = [
  OnboardingStepItem(
    label: LocaleKeys.onboarding_femaleBtn.tr(),
    value: 'woman',
  ),
  OnboardingStepItem(
    label: LocaleKeys.onboarding_maleBtn.tr(),
    value: 'man',
  ),
];
