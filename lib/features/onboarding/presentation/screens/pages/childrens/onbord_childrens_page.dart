import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/childrens/widget/kids_count_dialog.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/childrens/widget/onbord_childrens_image_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/childrens/widget/onbord_childrens_title_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/widgets_library.dart';

class OnbordChildrensPage extends StatelessWidget {
  const OnbordChildrensPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OnbordChildrensTitleWidget(),
        InteractionWidget(),
      ],
    );
  }
}

class InteractionWidget extends StatelessWidget {
  const InteractionWidget({super.key});

  _selectKidsCount(BuildContext context, OnboardingState state, int value) {
    context.read<OnboardingCubit>().updateState(
          kidsCount: value,
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
              const OnbordChildrensImageWidget(),
              const Spacer(),
              PrimaryButton(
                backgroundColor: Clr.of(context).neutralGrey100,
                titleColor: Clr.of(context).neutralGrey0,
                borderColor: Clr.of(context).neutralGrey60,
                title: LocaleKeys.onboarding_yesHave.tr(),
                onTap: () async {
                  final count = await showDialog<int?>(
                      context: context,
                      builder: (_) => const KidsCountDialog());
                  if (!context.mounted) return;
                  if (count != null) {
                    _selectKidsCount(
                      context,
                      state,
                      count,
                    );
                  }
                },
              ),
              spaceVer16,
              PrimaryButton(
                backgroundColor: Clr.of(context).neutralGrey100,
                titleColor: Clr.of(context).neutralGrey0,
                borderColor: Clr.of(context).neutralGrey60,
                title: LocaleKeys.onboarding_noDontHave.tr(),
                onTap: () {
                  _selectKidsCount(
                    context,
                    state,
                    0,
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
