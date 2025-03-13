import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';

class ResultDeterminationTitleWidget extends StatelessWidget {
  const ResultDeterminationTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spaceVer22,
        Text(
          LocaleKeys.resultDetermination_letsSetPriority.tr(),
          style: MainTextStyles.subtitle(context),
          textAlign: TextAlign.center,
        ),
        spaceVer16,
      ],
    );
  }
}

class ResultDeterminationSubTitleWidget extends StatelessWidget {
  const ResultDeterminationSubTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.resultDetermination_dragCardsInThatOrderText.tr(),
      style: MainTextStyles.title(context),
      textAlign: TextAlign.center,
    );
  }
}
