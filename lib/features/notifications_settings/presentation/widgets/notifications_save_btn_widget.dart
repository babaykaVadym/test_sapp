import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/notifications_settings/presentation/cubit/notifications_settings_cubit.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/core/widgets/buttons/primary_button.dart';

class NotificationsSaveBtnWidget extends StatelessWidget {
  const NotificationsSaveBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationsSettingsCubit, NotificationsSettingsState>(
      builder: (context, state) {
        return PrimaryButton(
          title: LocaleKeys.notificationSettings_saveBtn.tr(),
          onTap: () {
            //   context.read<NotificationsSettingsCubit>().updatePersonalModel();
          },
        );
      },
    );
  }
}
