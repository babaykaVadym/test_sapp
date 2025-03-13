import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/widgets/questionnaire_step_header.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/presentation/cubit/questionnaire_without_diagnosis_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class QuestionDiagnosisPageHeadWidget extends StatelessWidget {
  const QuestionDiagnosisPageHeadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final contentTopPadding = MediaQuery.of(context).size.height * 0.1;
    return BlocBuilder<QuestionnaireWithoutDiagnosisCubit,
        QuestionnaireWithoutDiagnosisState>(
      builder: (context, state) {
        return SizedBox(
            height: contentTopPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                QuestionnaireStepHeader(
                  currentStep: state.currentQuestionIndex + 1,
                  totalSteps: state.questions.length,
                  onBack: () {
                    if (state.currentQuestionIndex > 0) {
                      context
                          .read<QuestionnaireWithoutDiagnosisCubit>()
                          .goToPrevStep();

                      context
                          .read<QuestionnaireWithoutDiagnosisCubit>()
                          .pageController
                          .previousPage(
                            duration: const Duration(milliseconds: 260),
                            curve: Curves.easeInOut,
                          );
                    } else {
                      context.pop();
                    }
                  },
                ),
              ],
            ));
      },
    );
  }
}
