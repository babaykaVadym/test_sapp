import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/presentation/cubit/questionnaire_without_diagnosis_cubit.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_library/core/widgets/buttons/primary_button.dart';

class QuestionnaireDefineStateScreen extends StatelessWidget {
  const QuestionnaireDefineStateScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
                    SuccessBottomButtonSection(),
                  ],
                ),
              ),
            ],
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
        spaceVer18,
        Text(
          LocaleKeys.questionnaireDefine_thisShortSurveyWillHelpText.tr(),
          style: MainTextStyles.title(context),
          textAlign: TextAlign.center,
        ),
        spaceVer12,
        Text(
          LocaleKeys.questionnaireDefine_yourAnswersAreConfidentialText.tr(),
          style: MainTextStyles.title(context),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class SuccessBottomButtonSection extends StatelessWidget {
  const SuccessBottomButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 12,
        left: BasicConstants.defaultHorizontalPadding,
        right: BasicConstants.defaultHorizontalPadding,
      ),
      child: PrimaryButton(
        title: LocaleKeys.questionnaireDefine_continueBtn.tr(),
        onTap: () {
          context.read<QuestionnaireWithoutDiagnosisCubit>().resetState();
          context.push(Routes.questionnaireInitPath);
        },
      ),
    );
  }
}
