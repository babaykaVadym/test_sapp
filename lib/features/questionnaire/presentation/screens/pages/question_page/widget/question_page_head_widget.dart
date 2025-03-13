import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/cubit/questionnaire_cubit.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/screens/pages/question_page/cubit/question_page_cubit.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/widgets/questionnaire_step_header.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionPageHeadWidget extends StatelessWidget {
  const QuestionPageHeadWidget({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final contentTopPadding = MediaQuery.of(context).size.height * 0.1;
    return BlocBuilder<QuestionPageCubit, QuestionPageState>(
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
                      context.read<QuestionPageCubit>().goToPrevStep();

                      pageController.previousPage(
                        duration: const Duration(milliseconds: 260),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      context.read<QuestionnaireCubit>().goToInitState();
                    }
                  },
                ),
              ],
            ));
      },
    );
  }
}
