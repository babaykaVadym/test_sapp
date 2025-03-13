import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/gender/widget/gender_item_list.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/gender/widget/onbord_gender_image_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/gender/widget/onbord_gender_title_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/widgets_library.dart';

class OnbordGenderPage extends StatelessWidget {
  const OnbordGenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OnbordGenderTitleWidget(),
        InteractionWidget(),
      ],
    );
  }
}

class InteractionWidget extends StatelessWidget {
  const InteractionWidget({super.key});

  _selectGender(BuildContext context, OnboardingState state, String gender) {
    context.read<OnboardingCubit>().updateState(
          userGender: gender,
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
              const OnbordGenderImageWidget(),
              const Spacer(),

              for (int i = 0; i < genderItemList.length; i++) ...[
                PrimaryButton(
                  backgroundColor: Clr.of(context).neutralGrey100,
                  titleColor: Clr.of(context).neutralGrey0,
                  borderColor: Clr.of(context).neutralGrey60,
                  title: genderItemList[i].label,
                  onTap: () {
                    _selectGender(context, state, genderItemList[i].value);
                  },
                ),
                spaceVer16,
              ]

              /// TODO need to discuss
              // spaceVer16,
              // PrimaryButton(
              //   backgroundColor: Clr.of(context).neutralGrey100,
              //   titleColor: Clr.of(context).neutralGrey0,
              //   borderColor: Clr.of(context).neutralGrey60,
              //   title: LocaleKeys.otherBtn.tr(),
              //   onTap: () {
              //     _selectGender(context, state, 'other');
              //   },
              // ),
            ],
          ),
        );
      },
    );
  }
}
