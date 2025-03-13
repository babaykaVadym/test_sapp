import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/core/styles/colors.dart';

class PageStepIndicator extends StatelessWidget {
  const PageStepIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        final currentStep = state.pageIdnex + 1;
        final totalSteps = state.totalPages;

        return LayoutBuilder(builder: (context, constrained) {
          final itemLeng = constrained.maxWidth / totalSteps;

          return SizedBox(
            height: 4,
            child: Row(
              children: [
                Container(
                  width: itemLeng * currentStep,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Clr.of(context).primaryBlue40,
                  ),
                ),
                if (currentStep != totalSteps - 1) ...[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 4),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Clr.of(context).neutralGrey90,
                      ),
                    ),
                  ),
                ]
              ],
            ),
          );
        });
      },
    );
  }
}
