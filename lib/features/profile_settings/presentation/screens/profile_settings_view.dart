import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/features/profile_settings/presentation/widgets/avatar_profile_widget.dart';
import 'package:flutter_app_scarb/features/profile_settings/presentation/widgets/delete_profile_btn_widget.dart';
import 'package:flutter_app_scarb/features/profile_settings/presentation/widgets/profile_navigation_app_bar.dart';
import 'package:flutter_app_scarb/features/profile_settings/presentation/widgets/profile_save_btn_widget.dart';
import 'package:flutter_app_scarb/features/profile_settings/presentation/widgets/profile_settings_interaction_widget.dart';
import 'package:widgets_library/core/styles/colors.dart';

class ProfileSettingsView extends StatelessWidget {
  const ProfileSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileNavigationAppBar(),
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
              children: [
                AvatarProfileWidget(),
                ProfileSettingsInteractionWidget(),
                DeleteProfileBtnWidget(),
                Spacer(),
                ProfileSaveBtnWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
