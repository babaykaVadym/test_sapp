import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/questionnaire/enums/survey_types.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/screens/pages/complete_questionnaire/complete_questionnaire_page.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/screens/pages/init_questionnaire/init_questionnaire_page.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/screens/pages/question_page/cubit/question_page_cubit.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/screens/pages/question_page/questionnaire_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/core/styles/colors.dart';

import '../../../../core/helper/system.dart';
import '../../../../core/utils/screen_utils.dart';
import '../cubit/questionnaire_cubit.dart';

class QuestionnaireScreen extends StatelessWidget with ScreenUtils {
  const QuestionnaireScreen({super.key, required this.surveyTypes});

  final String surveyTypes;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuestionnaireCubit(),
      child: Scaffold(
        backgroundColor: Clr.of(context).neutralGrey100,
        body: BlocConsumer<QuestionnaireCubit, QuestionnaireState>(
          builder: (context, state) {
            return state.when(
              init: (
                progressOn,
                error,
                questions,
              ) =>
                  InitQuestionnairePage(
                surveySlug: SurveyTypes.depression.key,
              ),
              complete: (
                progressOn,
                error,
                questions,
              ) =>
                  const CompleteQuestionnairePage(),
              questions: (
                progressOn,
                error,
                sessionId,
                questions,
              ) {
                if (questions.isEmpty || sessionId == null) {
                  return const SizedBox();
                }

                return BlocProvider(
                  create: (context) => QuestionPageCubit(
                    questions,
                  ),
                  child: QuestionnairePage(
                    sessionId: sessionId,
                  ),
                );
              },
            );
          },
          listener: (BuildContext context, state) {
            if (state.error != null) {
              SystemHelper.showToast(
                e: state.error,
              );

              context.read<QuestionnaireCubit>().setError();
            }

            handleProgress(state.progressOn, context);
          },
        ),
      ),
    );
  }
}
