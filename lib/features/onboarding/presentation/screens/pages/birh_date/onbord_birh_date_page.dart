import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/utils/pickers/picker_date.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/birh_date/widget/onbord_birh_date_image_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/birh_date/widget/onbord_birh_date_title_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/widgets_library.dart';

class OnbordBirhDatePage extends StatelessWidget {
  const OnbordBirhDatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OnbordBirhDateTitleWidget(),
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
              const OnbordBirhDateImageWidget(),
              const Spacer(),
              DatePicker(
                initialDate: state.userDateBirth,
                label: LocaleKeys.onboarding_dirthDate.tr(),
                lastDate: DateTime.now(),
                hintText: LocaleKeys.onboarding_enterBirthDate.tr(),
                showErrorBorder: state.userDateBirthError,
                onChanged: (date) {
                  context.read<OnboardingCubit>().updateState(
                        userDateBirth: date,
                        userDateBirthError:
                            date == null && state.userDateBirth == null,
                      );
                },
              ),
              const Spacer(),
              PrimaryButton(
                title: LocaleKeys.onboarding_continueBtn.tr(),
                onTap: () {
                  context.read<OnboardingCubit>().validateBirthDate();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
