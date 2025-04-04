import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';

class OnbordGenderIdentityTitleWidget extends StatelessWidget {
  const OnbordGenderIdentityTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.onboarding_indicateYourGenderIdentity.tr(),
      style: MainTextStyles.subtitle(context),
    );
  }
}
