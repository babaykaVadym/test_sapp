import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/features/notifications_settings/presentation/widgets/notifications_navigation_app_bar.dart';
import 'package:flutter_app_scarb/features/notifications_settings/presentation/widgets/notifications_save_btn_widget.dart';
import 'package:flutter_app_scarb/features/notifications_settings/presentation/widgets/reminder_notifications_setting_widget.dart';
import 'package:flutter_app_scarb/features/notifications_settings/presentation/widgets/system_notifications_setting_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:widgets_library/core/styles/colors.dart';

class NotificationsSettingsView extends StatelessWidget {
  const NotificationsSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NotificationsNavigationAppBar(),
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
                SystemNotificationsSettingWidget(),
                ReminderNotificationsSettingWidget(),
                Spacer(),
                NotificationsSaveBtnWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
