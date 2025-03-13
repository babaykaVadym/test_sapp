import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/core/utils/pickers/picker_month_year.dart';
import 'package:flutter_app_scarb/features/personal_settings/presentation/cubit/personal_settings_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/screen_utils.dart';

class PersonalSettingsJoinTeamWidget extends StatelessWidget with ScreenUtils {
  const PersonalSettingsJoinTeamWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalSettingsCubit, PersonalSettingsState>(
      builder: (context, state) {
        return MonthYearPicker(
          initialDate: state.userJoinDate,
          label: LocaleKeys.personalSettings_whenDidYouJoinTheTeam.tr(),
          showErrorBorder: state.userJoinDateError,
          onChanged: (date) {
            context.read<PersonalSettingsCubit>().updateState(
                  userJoinDate: date,
                  userJoinDateError: date == null && state.userJoinDate == null,
                );
          },
        );
      },
    );
  }
}
