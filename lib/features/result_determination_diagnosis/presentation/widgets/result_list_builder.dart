import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/result_determination_diagnosis/presentation/cubit/result_determination_diagnosis_cubit.dart';
import 'package:flutter_app_scarb/features/result_determination_diagnosis/presentation/widgets/result_card_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultListBuilder extends StatelessWidget {
  const ResultListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResultDeterminationDiagnosisCubit,
        ResultDeterminationDiagnosisState>(
      builder: (context, state) {
        return ReorderableListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          onReorder: (oldIndex, newIndex) => context
              .read<ResultDeterminationDiagnosisCubit>()
              .updateList(oldIndex, newIndex),
          itemBuilder: (BuildContext context, int index) {
            final item = state.resultList[index];

            return ResultCardWidget(
              key: ValueKey(state.resultList[index]),
              index: index,
              resultItemModel: item,
            );
          },
          itemCount: state.resultList.length,
        );
      },
    );
  }
}
