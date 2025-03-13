import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/marital_status/widget/marital_status_item_list.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/marital_status/widget/onbord_marital_status_image_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/marital_status/widget/onbord_marital_status_title_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/widgets_library.dart';

class OnbordMaritalStatusPage extends StatelessWidget {
  const OnbordMaritalStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OnbordMaritalStatusTitleWidget(),
        InteractionWidget(),
      ],
    );
  }
}

class InteractionWidget extends StatelessWidget {
  const InteractionWidget({super.key});

  _selectMaritalStatus(
      BuildContext context, OnboardingState state, String status) {
    context.read<OnboardingCubit>().updateState(
          maritalStatus: status,
        );
    context.read<OnboardingCubit>().jumpToPageOnboarding(
          page: state.pageIdnex + 1,
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return ContentScrollBuilder(
          child: Column(
            children: [
              const Spacer(),
              const OnbordMaritalStatusImageWidget(),
              const Spacer(),
              for (int i = 0; i < maritalStatusItemList.length; i++) ...[
                PrimaryButton(
                  backgroundColor: Clr.of(context).neutralGrey100,
                  titleColor: Clr.of(context).neutralGrey0,
                  borderColor: Clr.of(context).neutralGrey60,
                  title: maritalStatusItemList[i].label,
                  onTap: () {
                    _selectMaritalStatus(
                        context, state, maritalStatusItemList[i].value);
                  },
                ),
                spaceVer16,
              ]
            ],
          ),
        );
      },
    );
  }
}
