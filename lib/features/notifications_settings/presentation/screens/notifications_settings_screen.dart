import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/notifications_settings/presentation/screens/notifications_settings_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/system.dart';
import '../../../../core/utils/screen_utils.dart';
import '../cubit/notifications_settings_cubit.dart';

class NotificationsSettingsScreen extends StatelessWidget with ScreenUtils {
  const NotificationsSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationsSettingsCubit(),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<NotificationsSettingsCubit,
              NotificationsSettingsState>(
            builder: (context, state) {
              return const NotificationsSettingsView();
            },
            listener: (BuildContext context, state) {
              if (state.error != null) {
                SystemHelper.showToast(
                  e: state.error,
                );

                context.read<NotificationsSettingsCubit>().setError();
              }

              handleProgress(state.progressOn, context);
            },
          ),
        ),
      ),
    );
  }
}
