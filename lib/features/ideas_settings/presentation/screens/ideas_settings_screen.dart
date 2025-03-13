import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/ideas_settings/presentation/screens/ideas_settings_view.dart';
import 'package:flutter_app_scarb/features/ideas_settings/presentation/screens/ideas_thanks_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/system.dart';
import '../../../../core/utils/screen_utils.dart';
import '../cubit/ideas_settings_cubit.dart';

class IdeasSettingsScreen extends StatelessWidget with ScreenUtils {
  const IdeasSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IdeasSettingsCubit(),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<IdeasSettingsCubit, IdeasSettingsState>(
            builder: (context, state) {
              if (state.showThanks) {
                return const IdeasThanksPage();
              }

              return const IdeasSettingsView();
            },
            listener: (BuildContext context, state) {
              if (state.error != null) {
                SystemHelper.showToast(
                  e: state.error,
                );

                context.read<IdeasSettingsCubit>().setError();
              }

              handleProgress(state.progressOn, context);
            },
          ),
        ),
      ),
    );
  }
}
