import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/features/registration/presentation/cubit/registration_cubit.dart';
import 'package:flutter_app_scarb/features/registration/presentation/widgets/email_text_field.dart';
import 'package:flutter_app_scarb/features/registration/presentation/widgets/invite_link_text_field.dart';
import 'package:flutter_app_scarb/features/registration/presentation/widgets/password_text_field.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationInteractionFormWidget extends StatelessWidget {
  const RegistrationInteractionFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationCubit, RegistrationState>(
      builder: (context, state) {
        return Column(
          spacing: BasicConstants.defaultSpacing,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            spaceVer16,
            EmailTextField(
              initValue: state.email,
              errorText: state.emailError,
              autofillHints: AutofillHints.email,
              onChanged: (text) {
                context.read<RegistrationCubit>().updateEmail(
                      email: text,
                      error: text.isEmpty
                          ? LocaleKeys.registration_thisFieldIsRequired.tr()
                          : null,
                    );
              },
            ),
            PasswordTextField(
              initValue: state.password,
              label: LocaleKeys.registration_yourPassword.tr(),
              hintText: LocaleKeys.registration_createPassword.tr(),
              autofillHints: AutofillHints.password,
              errorText: state.passwordError,
              onChanged: (text) {
                context.read<RegistrationCubit>().updatePassword(
                      password: text,
                      error: text.isEmpty
                          ? LocaleKeys.registration_thisFieldIsRequired.tr()
                          : null,
                    );
              },
            ),
            PasswordTextField(
              initValue: state.confirmPassword,
              label: LocaleKeys.registration_confirmPassword.tr(),
              hintText: LocaleKeys.registration_confirmPassword.tr(),
              errorText: state.confirmPasswordError,
              onChanged: (text) {
                context.read<RegistrationCubit>().updateConfirmPassword(
                      password: text,
                      error: text.isEmpty
                          ? LocaleKeys.registration_thisFieldIsRequired.tr()
                          : null,
                    );
              },
            ),
            InviteLinkTextField(
              initialValue: state.inviteLink,
              errorText: state.inviteLinkError,
              onChanged: (text) {
                context.read<RegistrationCubit>().updateInviteLink(
                      value: text,
                      error: text.isEmpty
                          ? LocaleKeys.registration_thisFieldIsRequired.tr()
                          : null,
                    );
              },
            ),
          ],
        );
      },
    );
  }
}
