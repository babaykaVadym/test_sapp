import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_constrain_widget.dart';
import 'package:flutter_app_scarb/features/result_determination_diagnosis/presentation/screens/pages/processing/processing_screen.dart';
import 'package:flutter_app_scarb/features/result_determination_diagnosis/presentation/screens/pages/success/success_screen.dart';
import 'package:flutter_app_scarb/features/result_determination_diagnosis/presentation/widgets/result_bottom_button_section.dart';
import 'package:flutter_app_scarb/features/result_determination_diagnosis/presentation/widgets/result_determination_title_widget.dart';
import 'package:flutter_app_scarb/features/result_determination_diagnosis/presentation/widgets/result_list_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/system.dart';
import '../../../../core/utils/screen_utils.dart';
import '../cubit/result_determination_diagnosis_cubit.dart';

class ResultDeterminationDiagnosisScreen extends StatelessWidget
    with ScreenUtils {
  const ResultDeterminationDiagnosisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ResultDeterminationDiagnosisCubit()..init(),
        child: SafeArea(
          child: BlocConsumer<ResultDeterminationDiagnosisCubit,
              ResultDeterminationDiagnosisState>(
            builder: (context, state) {
              if (state.showProcessing) {
                return const ProcessingScreen();
              }

              if (state.showSuccess) {
                return const SuccessScreen();
              }

              return const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: BasicConstants.defaultHorizontalPadding,
                ),
                child: ContentConstrainWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ResultDeterminationTitleWidget(),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              ResultDeterminationSubTitleWidget(),
                              spaceVer12,
                              ResultListBuilder(),
                            ],
                          ),
                        ),
                      ),
                      ResultBottomButtonSection(),
                    ],
                  ),
                ),
              );
            },
            listener: (BuildContext context, state) {
              if (state.error != null) {
                SystemHelper.showToast(
                  e: state.error,
                );

                context.read<ResultDeterminationDiagnosisCubit>().setError();
              }

              handleProgress(state.progressOn, context);
            },
          ),
        ),
      ),
    );
  }
}
