import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/profile_settings/presentation/screens/profile_settings_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/system.dart';
import '../../../../core/utils/screen_utils.dart';
import '../cubit/profile_settings_cubit.dart';

class ProfileSettingsScreen extends StatelessWidget with ScreenUtils {
  const ProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileSettingsCubit()..getData(),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<ProfileSettingsCubit, ProfileSettingsState>(
            builder: (context, state) {
              return const ProfileSettingsView();
            },
            listener: (BuildContext context, state) {
              if (state.error != null) {
                SystemHelper.showToast(
                  e: state.error,
                );

                context.read<ProfileSettingsCubit>().setError();
              }

              handleProgress(state.progressOn, context);
            },
          ),
        ),
      ),
    );
  }
}
