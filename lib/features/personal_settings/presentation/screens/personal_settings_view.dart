import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/features/personal_settings/presentation/widgets/personal_navigation_app_bar.dart';
import 'package:flutter_app_scarb/features/personal_settings/presentation/widgets/personal_save_btn_widget.dart';
import 'package:flutter_app_scarb/features/personal_settings/presentation/widgets/personal_settings_date_birth.dart';
import 'package:flutter_app_scarb/features/personal_settings/presentation/widgets/personal_settings_digital_technologies_widget.dart';
import 'package:flutter_app_scarb/features/personal_settings/presentation/widgets/personal_settings_gender_identity_widget.dart';
import 'package:flutter_app_scarb/features/personal_settings/presentation/widgets/personal_settings_gender_widget.dart';
import 'package:flutter_app_scarb/features/personal_settings/presentation/widgets/personal_settings_having_children_widget.dart';
import 'package:flutter_app_scarb/features/personal_settings/presentation/widgets/personal_settings_join_team_widget.dart';
import 'package:flutter_app_scarb/features/personal_settings/presentation/widgets/personal_settings_marital_Status_widget.dart';
import 'package:widgets_library/core/styles/colors.dart';

class PersonalSettingsView extends StatelessWidget {
  const PersonalSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PersonalNavigationAppBar(),
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
                spaceVer16,
                PersonalSettingsJoinTeamWidget(),
                PersonalSettingsGenderWidget(),
                PersonalSettingsGenderIdentityWidget(),
                PersonalSettingsDateBirth(),
                PersonalSettingsMaritalStatusWidget(),
                PersonalSettingsHavingChildrenWidget(),
                PersonalSettingsDigitalTechnologiesWidget(),
                Spacer(),
                PersonalSaveBtnWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
