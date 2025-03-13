import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuestionnaireAnalyzeScreen extends StatelessWidget {
  const QuestionnaireAnalyzeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: BasicConstants.defaultHorizontalPadding,
            ),
            child: Column(
              children: [
                ContentScrollBuilder(
                  child: Column(
                    children: [
                      Spacer(),
                      ProcessingIconWidget(),
                      spaceVer16,
                      ProcessingTitleWidget(),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProcessingIconWidget extends StatelessWidget {
  const ProcessingIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      SvgImages.onboardingCharacter,
      height: 145,
      width: 145,
    );
  }
}

class ProcessingTitleWidget extends StatelessWidget {
  const ProcessingTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          LocaleKeys.questionnaireDefine_letsDetermineYourEmotionalState.tr(),
          style: MainTextStyles.subtitle(context),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
