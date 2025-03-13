import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/presentation/cubit/questionnaire_without_diagnosis_cubit.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/presentation/widgets/question_diagnosis_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionDiagnosisPagesListBuilder extends StatelessWidget {
  const QuestionDiagnosisPagesListBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionnaireWithoutDiagnosisCubit,
        QuestionnaireWithoutDiagnosisState>(
      builder: (context, state) {
        return PageView(
          pageSnapping: false,
          controller:
              context.read<QuestionnaireWithoutDiagnosisCubit>().pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: state.questions
              .map((q) => QuestionDiagnosisView(
                  question: q,
                  onTap: (
                    p0,
                  ) async {
                    context
                        .read<QuestionnaireWithoutDiagnosisCubit>()
                        .answerToQuestion(value: p0);

                    if (state.currentQuestionIndex ==
                        state.questions.length - 1) {
                      context
                          .read<QuestionnaireWithoutDiagnosisCubit>()
                          .getResult();

                      return;
                    }

                    context
                        .read<QuestionnaireWithoutDiagnosisCubit>()
                        .nextPage();
                  }))
              .toList(),
        );
      },
    );
  }
}
