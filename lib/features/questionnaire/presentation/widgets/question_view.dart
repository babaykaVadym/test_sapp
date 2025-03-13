import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/features/questionnaire/data/models/questionnaire_model.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/widgets/question_page_buttons_list.dart';
import 'package:flutter_svg/svg.dart';

class QuestionView extends StatelessWidget {
  const QuestionView({super.key, required this.question, required this.onTap});
  final Function(int, int) onTap;
  final Question question;

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
              QuestionPageButtonsList(
                scaleAnswerMax: question.scaleAnswerMax ?? 3,
                scaleAnswerMin: question.scaleAnswerMin ?? 0,
                index: question.indexAnswerButton,
                onTap: (p0, index) => onTap(p0, index),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
