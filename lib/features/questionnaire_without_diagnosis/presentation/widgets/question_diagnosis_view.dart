import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/data/models/questionnaire_without_diagnosis_model.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/presentation/widgets/question_diagnosis_page_buttons_list.dart';
import 'package:flutter_svg/svg.dart';

class QuestionDiagnosisView extends StatelessWidget {
  const QuestionDiagnosisView(
      {super.key, required this.question, required this.onTap});
  final Function(
    int,
  ) onTap;
  final QuestionModel question;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          question.content ?? '',
          style: MainTextStyles.textSubTitelStyle,
        ),
        ContentScrollBuilder(
          child: Column(
            children: [
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 8,
                children: [
                  if (question.image != null)
                    SvgPicture.asset(
                      question.image!.path,
                      width: question.image!.width,
                      height: question.image!.height,
                    ),
                ],
              ),
              const Spacer(),
              QuestionDiagnosisPageButtonsList(
                scaleAnswerMax: question.scaleMax ?? 3,
                scaleAnswerMin: question.scaleMin ?? 0,
                index: question.valueAnswerButton,
                onTap: (
                  p0,
                ) =>
                    onTap(
                  p0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
