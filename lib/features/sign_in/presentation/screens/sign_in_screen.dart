import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/core/utils/keyboard_tool.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_constrain_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/features/registration/presentation/widgets/bottom_button_section.dart';
import 'package:flutter_app_scarb/features/registration/presentation/widgets/email_text_field.dart';
import 'package:flutter_app_scarb/features/registration/presentation/widgets/password_text_field.dart';
import 'package:flutter_app_scarb/features/sign_in/presentation/widgets/forgot_password_widget.dart';
import 'package:flutter_app_scarb/features/sign_in/presentation/widgets/sign_in_title_widget.dart';
import 'package:flutter_app_scarb/features/sign_in/presentation/widgets/sign_up_widget.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helper/system.dart';
import '../../../../core/utils/screen_utils.dart';
import '../cubit/sign_in_cubit.dart';

class SignInScreen extends StatelessWidget with ScreenUtils {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<SignInCubit, SignInState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: BasicConstants.defaultHorizontalPadding,
                ),
                child: ContentConstrainWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SignInTitleWidget(),
                      ContentScrollBuilder(
                        child: Form(
                          child: Column(
                            children: [
                              Column(
                                spacing: BasicConstants.defaultSpacing,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  spaceVer16,
                                  EmailTextField(
                                    initValue: state.email,
                                    errorText: state.emailError,
                                    autofillHints: AutofillHints.email,
                                    onFieldSubmitted: (text) {},
                                    onChanged: (text) {
                                      context.read<SignInCubit>().updateEmail(
                                          email: text,
                                          error: text.isEmpty
                                              ? LocaleKeys
                                                  .registration_thisFieldIsRequired
                                                  .tr()
                                              : null);
                                    },
                                  ),
                                  PasswordTextField(
                                    initValue: state.password,
                                    onFieldSubmitted: (text) {
                                      _onContinueButtonTap(context);
                                    },
                                    label: LocaleKeys.registration_yourPassword
                                        .tr(),
                                    hintText:
                                        LocaleKeys.login_enterYourPassword.tr(),
                                    autofillHints: AutofillHints.password,
                                    errorText: state.passwordError,
                                    onChanged: (text) {
                                      context.read<SignInCubit>().updatePassword(
                                          password: text,
                                          error: text.isEmpty
                                              ? LocaleKeys
                                                  .registration_thisFieldIsRequired
                                                  .tr()
                                              : null);
                                    },
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SignUpWidget(),
                                      ForgotPasswordWidget(),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              BottomButtonSection(
                                  onTap: () => _onContinueButtonTap(context)),
                            ],
                          ),
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

                context.read<SignInCubit>().setError();
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
    final res = context.read<SignInCubit>().validate();

    if (res) {
      final resultRegistration = await context.read<SignInCubit>().signIn();

      if (!context.mounted) return;

      if (resultRegistration) {
        SystemHelper.showSuccessfullyToast();

        context.go(
          Routes.emotionStatePath,
        );
      }
    }
  }
}
