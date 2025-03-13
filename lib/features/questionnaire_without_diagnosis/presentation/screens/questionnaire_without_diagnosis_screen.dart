import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_constrain_widget.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/presentation/widgets/question_diagnosis_page_head_widget.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/presentation/widgets/question_diagnosis_pages_list_builder.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis_pages/presentation_analyze/questionnaire_analyze_screen.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis_pages/presentation_result/questionnaire_result_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/system.dart';
import '../../../../core/utils/screen_utils.dart';
import '../cubit/questionnaire_without_diagnosis_cubit.dart';

class QuestionnaireWithoutDiagnosisScreen extends StatelessWidget
    with ScreenUtils {
  const QuestionnaireWithoutDiagnosisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuestionnaireWithoutDiagnosisCubit,
        QuestionnaireWithoutDiagnosisState>(
      builder: (context, state) {
        if (state.showProcessing) {
          return const QuestionnaireAnalyzeScreen();
        }

        if (state.showResultPage) {
          return const QuestionnaireResultScreen();
        }

        return const Scaffold(
          body: SafeArea(
              child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: BasicConstants.defaultHorizontalPadding,
                  ),
                  child: ContentConstrainWidget(
                    child: Column(
                      children: [
                        QuestionDiagnosisPageHeadWidget(),
                        Expanded(child: QuestionDiagnosisPagesListBuilder()),
                      ],
                    ),
                  ))),
        );
      },
      listener: (BuildContext context, state) {
        if (state.error != null) {
          SystemHelper.showToast(
            e: state.error,
          );

          context.read<QuestionnaireWithoutDiagnosisCubit>().setError();
        }

        handleProgress(state.progressOn, context);
      },
    );
  }
}
