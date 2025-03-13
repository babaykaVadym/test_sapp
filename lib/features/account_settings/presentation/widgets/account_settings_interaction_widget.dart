import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/features/account_settings/presentation/widgets/account_log_out_widget.dart';
import 'package:flutter_app_scarb/features/account_settings/presentation/widgets/account_settings_button_view.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:go_router/go_router.dart';

class AccountSettingsInteractionWidget extends StatelessWidget {
  const AccountSettingsInteractionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 16,
        children: [
          AccountSettingsButtonView(
            iconPath: SvgImages.accountSettingsManageAccounts,
            label: LocaleKeys.accountSettings_profileSettings.tr(),
            onTap: () {
              context.push(Routes.homePath + Routes.profileSettingsPath);
            },
          ),
          AccountSettingsButtonView(
            iconPath: SvgImages.accountSettingsPermIdentity,
            label: LocaleKeys.accountSettings_personalSettings.tr(),
            onTap: () {
              context.push(Routes.homePath + Routes.personalSettingsPath);
            },
          ),
          AccountSettingsButtonView(
            iconPath: SvgImages.accountSettingsNotifications,
            label: LocaleKeys.accountSettings_notificationSettings.tr(),
            onTap: () {
              context.push(Routes.homePath + Routes.notificationsSettingsPath);
            },
          ),
          AccountSettingsButtonView(
            iconPath: SvgImages.accountSettingsShield,
            label: LocaleKeys.accountSettings_privacyPolicy.tr(),
            onTap: () {},
          ),
          AccountSettingsButtonView(
            iconPath: SvgImages.accountSettingsAutFixHigh,
            label: LocaleKeys.accountSettings_ideasForImprovement.tr(),
            onTap: () {
              context.push(Routes.homePath + Routes.ideasSettingsPath);
            },
          ),
          const AccountLogOutWidget(),
        ],
      ),
    );
  }
}
