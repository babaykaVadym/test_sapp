import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/result_determination_diagnosis/presentation/cubit/result_determination_diagnosis_cubit.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/widgets_library.dart';

class ResultBottomButtonSection extends StatelessWidget {
  const ResultBottomButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      title: LocaleKeys.resultDetermination_confirmBtn.tr(),
      onTap: () {
        context.read<ResultDeterminationDiagnosisCubit>().chechResult();
      },
    );
  }
}
