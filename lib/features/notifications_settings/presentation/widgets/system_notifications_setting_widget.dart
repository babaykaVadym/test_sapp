import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/features/notifications_settings/presentation/cubit/notifications_settings_cubit.dart';
import 'package:flutter_app_scarb/features/notifications_settings/presentation/widgets/notifications_switch_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SystemNotificationsSettingWidget extends StatelessWidget {
  const SystemNotificationsSettingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationsSettingsCubit, NotificationsSettingsState>(
      builder: (context, state) {
        return NotificationsSwitchWidget(
          label: LocaleKeys.notificationSettings_systemNotifications.tr(),
          text: LocaleKeys.notificationSettings_notificationsAboutNewFeatures
              .tr(),
          onChanged: (p0) {
            context.read<NotificationsSettingsCubit>().updateState(
                  systemNotifications: p0,
                );
          },
          initValue: state.systemNotifications,
        );
      },
    );
  }
}
