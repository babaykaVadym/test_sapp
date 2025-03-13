import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/notifications_settings/presentation/cubit/notifications_settings_cubit.dart';
import 'package:flutter_app_scarb/features/notifications_settings/presentation/widgets/notifications_switch_widget.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReminderNotificationsSettingWidget extends StatelessWidget {
  const ReminderNotificationsSettingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationsSettingsCubit, NotificationsSettingsState>(
      builder: (context, state) {
        return NotificationsSwitchWidget(
          label: LocaleKeys.notificationSettings_reminder.tr(),
          text: LocaleKeys.notificationSettings_notificationsAboutNew.tr(),
          onChanged: (p0) {
            context.read<NotificationsSettingsCubit>().updateState(
                  reminder: p0,
                );
          },
          initValue: state.reminder,
        );
      },
    );
  }
}
