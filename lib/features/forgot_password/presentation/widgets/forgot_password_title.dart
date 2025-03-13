import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';

class ForgotPasswordTitleWidget extends StatelessWidget {
  const ForgotPasswordTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        Text(
          LocaleKeys.forgotPassword_recoverPassword.tr(),
          style: MainTextStyles.subtitle(context),
        ),
        Text(
          LocaleKeys.forgotPassword_weWillSendRecoveryInstructions.tr(),
          style: MainTextStyles.textDefaultStyle,
        ),
      ],
    );
  }
}
