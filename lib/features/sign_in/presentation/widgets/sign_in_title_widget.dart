import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';

class SignInTitleWidget extends StatelessWidget {
  const SignInTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final contentTopPadding = MediaQuery.of(context).size.height * 0.1;
    return Column(
      children: [
        SizedBox(height: contentTopPadding),
        Text(
          LocaleKeys.login_welcomeBack.tr(),
          style: MainTextStyles.subtitle(context),
        ),
      ],
    );
  }
}
