import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/core/utils/pickers/picker_month_year.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/join_day/widget/onbord_join_day_image_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/join_day/widget/onbord_join_day_title_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/widgets_library.dart';

class OnbordJoinDayPage extends StatelessWidget {
  const OnbordJoinDayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OnbordJoinDayTitleWidget(),
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
              const OnbordJoinDayImageWidget(),
              const Spacer(),
              MonthYearPicker(
                initialDate: state.userJoinDate,
                label: LocaleKeys.onboarding_dateYouJoined.tr(),
                showErrorBorder: state.userJoinDateError,
                onChanged: (date) {
                  context.read<OnboardingCubit>().updateState(
                        userJoinDate: date,
                        userJoinDateError:
                            date == null && state.userJoinDate == null,
                      );
                },
              ),
              const Spacer(),
              PrimaryButton(
                title: LocaleKeys.onboarding_continueBtn.tr(),
                onTap: () {
                  context.read<OnboardingCubit>().validateJoinDate();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
