import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_library/core/styles/colors.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            context.push(
              Routes.signUpPath,
            );
          },
          child: Text(
            LocaleKeys.registration_signUp.tr(),
            style: MainTextStyles.textBaseStyle.copyWith(
              color: Clr.of(context).primaryBlue40,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
