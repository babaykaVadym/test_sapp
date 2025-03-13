import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/presentation/cubit/questionnaire_without_diagnosis_cubit.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis_pages/presentation_result/widgets/qd_result_list_builder_widget.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis_pages/presentation_result/widgets/qd_result_titel_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionnaireResultScreen extends StatelessWidget {
  const QuestionnaireResultScreen({
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
                    QdResultTitelWidget(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          spacing: 18,
                          children: [
                            QdResultSubTitelWidget(),
                            QdResultListBuilderWidget(),
                          ],
                        ),
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
