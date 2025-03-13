import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/features/forgot_password/presentation/cubit/forgot_password_cubit.dart';
import 'package:flutter_app_scarb/features/forgot_password/presentation/widgets/forgot_password_email_text_field.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordInteractionFormWidget extends StatelessWidget {
  const ForgotPasswordInteractionFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
      builder: (context, state) {
        return Column(
          spacing: BasicConstants.defaultSpacing,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            spaceVer16,
            ForgotPasswordEmailTextField(
              initValue: state.userEmail,
              errorText: state.emailError,
              autofillHints: AutofillHints.email,
              onFieldSubmitted: (t) {
                context.read<ForgotPasswordCubit>().restorePassword();
              },
              onChanged: (text) {
                context.read<ForgotPasswordCubit>().updateEmail(
                      email: text,
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
