import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/features/new_password/presentation/cubit/new_password_cubit.dart';
import 'package:flutter_app_scarb/features/new_password/presentation/widgets/new_password_password_text_field.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewPasswordInteractionFormWidget extends StatelessWidget {
  const NewPasswordInteractionFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewPasswordCubit, NewPasswordState>(
      builder: (context, state) {
        return Column(
          spacing: BasicConstants.defaultSpacing,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NewPasswordPasswordTextField(
              initValue: state.newPassword,
              label: LocaleKeys.newPassword_yourNewPassword.tr(),
              hintText: LocaleKeys.newPassword_createNewPassword.tr(),
              autofillHints: AutofillHints.password,
              errorText: state.newPasswordError,
              onChanged: (text) {
                context.read<NewPasswordCubit>().updateNewPassword(
                      password: text,
                      error: text.isEmpty
                          ? LocaleKeys.registration_thisFieldIsRequired.tr()
                          : null,
                    );
              },
            ),
            NewPasswordPasswordTextField(
              initValue: state.confirmPassword,
              label: LocaleKeys.newPassword_confirmPassword.tr(),
              hintText: LocaleKeys.newPassword_confirmNewPassword.tr(),
              autofillHints: AutofillHints.password,
              textInputAction: TextInputAction.done,
              errorText: state.confirmPasswordError,
              onFieldSubmitted: (p0) {
                context.read<NewPasswordCubit>().setNewPassword();
              },
              onChanged: (text) {
                context.read<NewPasswordCubit>().updateConfirmPassword(
                      password: text,
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
