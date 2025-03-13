import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';

class QdResultTitelWidget extends StatelessWidget {
  const QdResultTitelWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.questionnaireResults_thanksForTheAnswers.tr(),
      style: MainTextStyles.subtitle(context),
      textAlign: TextAlign.center,
    );
  }
}

class QdResultSubTitelWidget extends StatelessWidget {
  const QdResultSubTitelWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.questionnaireResults_weHaveAnalyzedYourResponsesText.tr(),
      style: MainTextStyles.title(context),
      textAlign: TextAlign.center,
    );
  }
}
