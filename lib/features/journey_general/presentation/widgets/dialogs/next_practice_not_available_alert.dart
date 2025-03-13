import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';

class NextPracticeNotAvailableAlert extends StatelessWidget {
  const NextPracticeNotAvailableAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.journeyGeneral_nextStepIsNotYetAvailable.tr(),
          style: MainTextStyles.textDefaultBoldStyle,
        ),
        Text(
          LocaleKeys.journeyGeneral_passPreviousStage.tr(),
          style: MainTextStyles.textDefaultStyle,
          maxLines: 2,
        ),
      ],
    );
  }
}
