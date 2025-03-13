import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/tech_affinity/widget/onbord_tech_affinity_image_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/tech_affinity/widget/onbord_tech_affinity_title_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/tech_affinity/widget/tech_affinity_item_list.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_library/widgets_library.dart';

class OnbordTechAffinityPage extends StatelessWidget {
  const OnbordTechAffinityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OnbordTechAffinityTitleWidget(),
        InteractionWidget(),
      ],
    );
  }
}

class InteractionWidget extends StatelessWidget {
  const InteractionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return ContentScrollBuilder(
          child: Column(
            children: [
              const Spacer(),
              const OnbordTechAffinityImageWidget(),
              const Spacer(),
              for (int i = 0; i < techAffinityItemList.length; i++) ...[
                PrimaryButton(
                  backgroundColor: Clr.of(context).neutralGrey100,
                  titleColor: Clr.of(context).neutralGrey0,
                  borderColor: Clr.of(context).neutralGrey60,
                  title: techAffinityItemList[i].label,
                  onTap: () async {
                    // context.read<OnboardingCubit>().updateState(
                    //       techAffinity: techAffinityItemList[i].priorityValue,
                    //     );
                    // final resData = await context
                    //     .read<OnboardingCubit>()
                    //     .updateOnboardModel();

                    // if (!context.mounted) return;

                    // if (resData != null) {
                    //   SystemHelper.showSuccessfullyToast();

                    context.go(
                      Routes.wantWorkOnPath,
                    );
                    //        }
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
