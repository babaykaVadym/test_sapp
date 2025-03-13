import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/features/account_settings/presentation/widgets/account_settings_interaction_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/system.dart';
import '../../../../core/utils/screen_utils.dart';
import '../cubit/account_settings_cubit.dart';

class AccountSettingsScreen extends StatelessWidget with ScreenUtils {
  const AccountSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccountSettingsCubit(),
      child: Scaffold(
        body: BlocConsumer<AccountSettingsCubit, AccountSettingsState>(
          builder: (context, state) {
            return const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: BasicConstants.defaultHorizontalPadding,
                ),
                child: AccountSettingsInteractionWidget());
          },
          listener: (BuildContext context, state) {
            if (state.error != null) {
              SystemHelper.showToast(
                e: state.error,
              );

              context.read<AccountSettingsCubit>().setError();
            }

            handleProgress(state.progressOn, context);
          },
        ),
      ),
    );
  }
}
