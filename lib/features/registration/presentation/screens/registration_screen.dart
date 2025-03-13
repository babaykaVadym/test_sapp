import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/utils/keyboard_tool.dart';
import 'package:flutter_app_scarb/core/utils/screen_utils.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_constrain_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/features/registration/presentation/screens/widget/registration_interaction_form_widget.dart';
import 'package:flutter_app_scarb/features/registration/presentation/screens/widget/registration_title_widget.dart';
import 'package:flutter_app_scarb/features/registration/presentation/widgets/bottom_button_section.dart';
import 'package:flutter_app_scarb/features/registration/presentation/widgets/have_account.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helper/system.dart';
import '../cubit/registration_cubit.dart';

class RegistrationScreen extends StatelessWidget with ScreenUtils {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegistrationCubit(),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<RegistrationCubit, RegistrationState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: BasicConstants.defaultHorizontalPadding,
                ),
                child: ContentConstrainWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const RegistrationTitleWidget(),
                      ContentScrollBuilder(
                        child: Column(
                          children: [
                            const RegistrationInteractionFormWidget(),
                            const HaveAccountWidget(),
                            const Spacer(),
                            BottomButtonSection(
                                onTap: () => _onContinueButtonTap(context)),
                          ],
                        ),
                      ),
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

                context.read<RegistrationCubit>().setError();
              }

              handleProgress(state.progressOn, context);
            },
          ),
        ),
      ),
    );
  }

  void _onContinueButtonTap(
    BuildContext context,
  ) async {
    AppKeyboard.hideKeyboard(context);
    final validation = context.read<RegistrationCubit>().validate();

    if (!validation) {
      final resultRegistration =
          await context.read<RegistrationCubit>().registrationUser();

      if (!context.mounted) return;

      if (resultRegistration != null) {
        SystemHelper.showSuccessfullyToast();

        context.go(
          Routes.onboardingPath,
        );
      }
    }
  }
}
