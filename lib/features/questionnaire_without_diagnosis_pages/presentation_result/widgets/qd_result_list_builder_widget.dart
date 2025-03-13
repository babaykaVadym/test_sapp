import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/presentation/cubit/questionnaire_without_diagnosis_cubit.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis_pages/presentation_result/widgets/qd_result_card_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QdResultListBuilderWidget extends StatelessWidget {
  const QdResultListBuilderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionnaireWithoutDiagnosisCubit,
        QuestionnaireWithoutDiagnosisState>(
      builder: (context, state) {
        return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            final item = state.results[index];

            return QdResultCardWidget(
              resultModel: item,
            );
          },
          separatorBuilder: (BuildContext context, int index) => spaceVer10,
          itemCount: state.results.length,
        );
      },
    );
  }
}
