import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/gender_identity/widget/gender_identity_item_list.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/gender_identity/widget/onbord_gender_identity_image_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/gender_identity/widget/onbord_gender_identity_title_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/widgets_library.dart';

class OnbordGenderIdentityPage extends StatelessWidget {
  const OnbordGenderIdentityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OnbordGenderIdentityTitleWidget(),
        InteractionWidget(),
      ],
    );
  }
}

class InteractionWidget extends StatelessWidget {
  const InteractionWidget({super.key});

  _selectGenderIdentity(
      BuildContext context, OnboardingState state, String gender) {
    context.read<OnboardingCubit>().updateState(
          userGenderIdentity: gender,
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
              const OnbordGenderIdentityImageWidget(),
              const Spacer(),
              for (int i = 0; i < genderIndentityItemList.length; i++) ...[
                PrimaryButton(
                  backgroundColor: Clr.of(context).neutralGrey100,
                  titleColor: Clr.of(context).neutralGrey0,
                  borderColor: Clr.of(context).neutralGrey60,
                  title: genderIndentityItemList[i].label,
                  onTap: () {
                    _selectGenderIdentity(
                        context, state, genderIndentityItemList[i].value);
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
