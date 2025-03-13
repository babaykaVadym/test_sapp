import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';

class CompleteQuestionnaireTitleWidget extends StatelessWidget {
  const CompleteQuestionnaireTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spaceVer16,
        Text(
          LocaleKeys.questionnaire_thanksForAnswers.tr(),
          style: MainTextStyles.subtitle(context),
        ),
      ],
    );
  }
}
