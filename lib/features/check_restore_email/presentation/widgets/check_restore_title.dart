import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/features/forgot_password/presentation/cubit/forgot_password_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckRestoreTitleWidget extends StatelessWidget {
  const CheckRestoreTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Text(
              LocaleKeys.forgotPassword_recoverPassword.tr(),
              style: MainTextStyles.subtitle(context),
            ),
            Text(
              LocaleKeys.forgotPassword_weWillSendRecoveryInstructionsToMail
                  .tr(namedArgs: {'email': state.userEmail}),
              style: MainTextStyles.textDefaultStyle,
            ),
            Text(
              LocaleKeys.forgotPassword_ifYouDidNotReceiveTheInstructions.tr(),
              style: MainTextStyles.textDefaultStyle,
            ),
          ],
        );
      },
    );
  }
}
