import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/features/forgot_password/presentation/cubit/forgot_password_cubit.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/core/styles/colors.dart';

class CheckRestoreRepeadSendWidget extends StatelessWidget {
  const CheckRestoreRepeadSendWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              LocaleKeys.forgotPassword_sendAgain.tr(),
              style: MainTextStyles.textDefaultBoldStyle.copyWith(
                decoration: TextDecoration.underline,
                color: Clr.of(context).primaryBlue40,
              ),
            ),
          ],
        );
      },
    );
  }
}
