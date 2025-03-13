import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/personal_settings/presentation/screens/personal_settings_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/system.dart';
import '../../../../core/utils/screen_utils.dart';
import '../cubit/personal_settings_cubit.dart';

class PersonalSettingsScreen extends StatelessWidget with ScreenUtils {
  const PersonalSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PersonalSettingsCubit()..getData(),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<PersonalSettingsCubit, PersonalSettingsState>(
            builder: (context, state) {
              return const PersonalSettingsView();
            },
            listener: (BuildContext context, state) {
              if (state.error != null) {
                SystemHelper.showToast(
                  e: state.error,
                );

                context.read<PersonalSettingsCubit>().setError();
              }

              handleProgress(state.progressOn, context);
            },
          ),
        ),
      ),
    );
  }
}
