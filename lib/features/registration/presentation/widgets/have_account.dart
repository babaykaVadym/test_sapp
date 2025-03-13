import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_library/core/styles/colors.dart';

class HaveAccountWidget extends StatelessWidget {
  const HaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          spacing: 8,
          children: [
            Text(
              LocaleKeys.registration_alreadyHaveAccount.tr(),
              style: MainTextStyles.textBaseStyle,
            ),
            GestureDetector(
              onTap: () {
                context.push(Routes.signInPath);
              },
              child: Text(
                LocaleKeys.registration_logIn.tr(),
                style: MainTextStyles.textBaseStyle.copyWith(
                  color: Clr.of(context).primaryBlue40,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
