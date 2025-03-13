import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/features/privacy_policy/presentation/widgets/privacy_policy_navigation_app_bar.dart';
import 'package:widgets_library/core/styles/colors.dart';

class PrivacyPolicySettingsView extends StatelessWidget {
  const PrivacyPolicySettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PrivacyPolicyNavigationAppBar(),
        Divider(
          height: 1,
          color: Clr.of(context).neutralGrey60,
        ),
        const ContentScrollBuilder(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: BasicConstants.defaultHorizontalPadding,
            ),
            child: Column(
              spacing: 16,
              children: [],
            ),
          ),
        ),
      ],
    );
  }
}
