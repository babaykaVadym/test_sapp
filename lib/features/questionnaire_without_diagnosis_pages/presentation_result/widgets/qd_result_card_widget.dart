import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/features/questionnaire/enums/survey_types.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/data/models/questionnaire_without_diagnosis_model.dart';
import 'package:flutter_app_scarb/features/result_determination_diagnosis/presentation/screens/pages/symptom_description/symptom_description_dialog.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_library/core/consts/button_constants.dart';
import 'package:widgets_library/widgets_library.dart';

class QdResultCardWidget extends StatelessWidget {
  const QdResultCardWidget({
    super.key,
    required this.resultModel,
  });
  final QuestionnaireDiagnosisResultModel resultModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SurveyTypes.values.any(
        (p0) => p0.key == resultModel.slug,
      )
          ? 269
          : 328,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border(
          top: BorderSide(
            color: Clr.of(context).neutralGrey70,
            width: ButtonConstants.unselectedBorderWidth,
          ),
          right: BorderSide(
            color: Clr.of(context).neutralGrey70,
            width: ButtonConstants.unselectedBorderWidth,
          ),
          bottom: BorderSide(
            color: Clr.of(context).neutralGrey70,
            width: ButtonConstants.bottomUnselectedBorderWidth,
          ),
          left: BorderSide(
            color: Clr.of(context).neutralGrey70,
            width: ButtonConstants.unselectedBorderWidth,
          ),
        ),
      ),
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitelCardWidget(
            mentalDescription: resultModel.mentalDescription ?? '',
            title: resultModel.title ?? '',
          ),
          ProgressIndicatorWidget(
            maxValue: resultModel.maxValue,
            result: resultModel.chosenValue,
          ),
          DescripteonSlugWidget(
            description: resultModel.rulsDescription ?? '',
          ),
          SurveyTypes.values.any(
            (p0) => p0.key == resultModel.slug,
          )
              ? BottomButtonJourney(
                  slug: resultModel.slug!,
                )
              : const BottomButtonWidget()
        ],
      ),
    );
  }
}

class DescripteonSlugWidget extends StatelessWidget {
  const DescripteonSlugWidget({super.key, required this.description});
  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: MainTextStyles.textBaseStyle,
    );
  }
}

class TitelCardWidget extends StatelessWidget {
  const TitelCardWidget({
    super.key,
    required this.mentalDescription,
    required this.title,
  });

  final String mentalDescription;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: MainTextStyles.textBaseBoldStyle,
        ),
        SvgIconButton(
          onPressed: () => showDialog<DateTime?>(
              context: context,
              builder: (_) => SymptomDescriptionDialog(
                    description: mentalDescription,
                    title: title,
                  )),
          padding: 0,
          svgPicture: SvgPicture.asset(
            SvgImages.resultDeterminationIconInfo,
            height: 26,
            width: 26,
          ),
        ),
      ],
    );
  }
}

class ProgressIndicatorWidget extends StatelessWidget {
  const ProgressIndicatorWidget(
      {super.key, required this.result, required this.maxValue});

  final int result;
  final int maxValue;

  @override
  Widget build(BuildContext context) {
    Color textColor = Clr.of(context).primaryBlue40;
    Color itemColor = Clr.of(context).primaryBlue90;

    if (result == maxValue) {
      textColor = Clr.of(context).errorOrange40;
      itemColor = Clr.of(context).errorOrange90;
    } else if (result >= maxValue / 2) {
      textColor = Clr.of(context).tertiaryYellow40;
      itemColor = Clr.of(context).tertiaryYellow90;
    } else {
      textColor = Clr.of(context).secondaryGreen30;
      itemColor = Clr.of(context).secondaryGreen90;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: itemColor,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              SvgPicture.asset(
                SvgImages.resultDeterminationAutoAwesome,
                colorFilter: ColorFilter.mode(textColor, BlendMode.srcIn),
                height: 16,
                width: 16,
              ),
              spaceHor4,
              Text(
                "${LocaleKeys.questionnaireResults_yourResult.tr()}:",
                style: MainTextStyles.textDefaultBoldStyle.copyWith(
                  color: textColor,
                ),
              ),
              const Spacer(),
              Text(
                "$result ${LocaleKeys.questionnaireResults_pointsLabel.tr()}",
                style: MainTextStyles.textDefaultBoldStyle.copyWith(
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
        spaceVer12,
        LayoutBuilder(builder: (context, constrained) {
          final itemLeng = constrained.maxWidth / maxValue;

          return SizedBox(
            height: 4,
            child: Row(
              children: [
                Container(
                  width: itemLeng * result,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: textColor,
                  ),
                ),
                if (result != maxValue - 1) ...[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 4),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Clr.of(context).neutralGrey90,
                      ),
                    ),
                  ),
                ]
              ],
            ),
          );
        })
      ],
    );
  }
}

class BottomButtonWidget extends StatelessWidget {
  const BottomButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        PrimaryButton(
          title: LocaleKeys.questionnaireResults_consultationWithExpert.tr(),
          onTap: () async {},
        ),
        ChoiceButton(
          isSelected: false,
          title: LocaleKeys.questionnaireResults_wantThisInTheApp.tr(),
          onTap: () async {},
        ),
      ],
    );
  }
}

class BottomButtonJourney extends StatelessWidget {
  const BottomButtonJourney({super.key, required this.slug});
  final String slug;

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      title: LocaleKeys.questionnaireResults_startTheJourney.tr(),
      onTap: () async {
        context.push(Routes.questionnairePath, extra: slug);
      },
    );
  }
}
