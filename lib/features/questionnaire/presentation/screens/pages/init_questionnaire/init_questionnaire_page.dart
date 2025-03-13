import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_constrain_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/cubit/questionnaire_cubit.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/widgets/button_section.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:widgets_library/core/styles/colors.dart';

class InitQuestionnairePage extends StatelessWidget {
  const InitQuestionnairePage({super.key, required this.surveySlug});

  final String surveySlug;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionnaireCubit, QuestionnaireState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: BasicConstants.defaultHorizontalPadding,
            ),
            child: ContentConstrainWidget(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContentScrollBuilder(
                    child: Column(
                      children: [
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 16,
                          children: [
                            SvgPicture.asset(
                              SvgImages.questionnaireInitIcon,
                              width: 145,
                              height: 145,
                            ),
                            Text(
                              LocaleKeys
                                  .questionnaire_letAssessYourEmotionalState
                                  .tr(),
                              style: MainTextStyles.subtitle(context),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                            ),
                            Text(
                              LocaleKeys
                                  .questionnaire_questionnaireHowOftenDuringPastTwoWeeks
                                  .tr(),
                              style: MainTextStyles.textBaseStyle.copyWith(
                                color: Clr.of(context).neutralGrey20,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                            ),
                            Text(
                              LocaleKeys
                                  .questionnaire_questionnaireEachQuestionHasFourAnswer
                                  .tr(),
                              style: MainTextStyles.textBaseStyle.copyWith(
                                color: Clr.of(context).neutralGrey20,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 4,
                            ),
                          ],
                        ),
                        const Spacer(),
                        ButtonSection(
                          onTap: () {
                            context
                                .read<QuestionnaireCubit>()
                                .startQuestionnaire(
                                  surveySlug,
                                );
                          },
                          title: LocaleKeys.questionnaire_startBtn.tr(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
        );
      },
    );
  }
}
