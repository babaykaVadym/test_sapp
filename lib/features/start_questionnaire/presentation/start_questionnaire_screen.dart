import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/presentation/cubit/questionnaire_without_diagnosis_cubit.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_library/core/widgets/buttons/button_svg_icon.dart';
import 'package:widgets_library/core/widgets/buttons/choice_button.dart';

class StartQuestionnaireScreen extends StatelessWidget {
  const StartQuestionnaireScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionnaireWithoutDiagnosisCubit,
        QuestionnaireWithoutDiagnosisState>(
      builder: (context, state) {
        return const PopScope(
          canPop: false,
          child: Scaffold(
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: BasicConstants.defaultHorizontalPadding,
                ),
                child: Column(
                  spacing: 18,
                  children: [
                    StartQuestionnaireTitleWidget(),
                    ContentScrollBuilder(
                      child: Column(
                        children: [
                          Spacer(),
                          ImageStartQuestionnaireWidget(),
                          Spacer(),
                          StartQuestionnaireNavigationButton(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class ImageStartQuestionnaireWidget extends StatelessWidget {
  const ImageStartQuestionnaireWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      SvgImages.startQuestionnaireQuestions,
      height: 112,
      width: 112,
    );
  }
}

class StartQuestionnaireTitleWidget extends StatelessWidget {
  const StartQuestionnaireTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final contentTopPadding = MediaQuery.of(context).size.height * 0.1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: contentTopPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgIconButton(
                padding: 0,
                svgPicture: SvgPicture.asset(
                  SvgImages.backIcon,
                  height: 21,
                  width: 21,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
        Text(
          LocaleKeys.startQuestionnaire_doYouKnowProblemYouWantWork.tr(),
          style: MainTextStyles.subtitle(context),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}

class StartQuestionnaireNavigationButton extends StatelessWidget {
  const StartQuestionnaireNavigationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      mainAxisSize: MainAxisSize.min,
      children: [
        ChoiceButton(
          isSelected: false,
          title: LocaleKeys.startQuestionnaire_yesIKnowBtn.tr(),
          onTap: () async {
            String newRout =
                Routes.startQuestionnairePath + Routes.selectStatePath;

            context.push(newRout);
          },
        ),
        ChoiceButton(
          isSelected: false,
          title: LocaleKeys.startQuestionnaire_iDonNotKnowBtn.tr(),
          onTap: () async {
            String newRout =
                Routes.startQuestionnairePath + Routes.questionnaireDefinenPath;

            context.push(newRout);
          },
        ),
      ],
    );
  }
}
