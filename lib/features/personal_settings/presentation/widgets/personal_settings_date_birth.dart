import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/utils/pickers/picker_date.dart';
import 'package:flutter_app_scarb/features/personal_settings/presentation/cubit/personal_settings_cubit.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/screen_utils.dart';

class PersonalSettingsDateBirth extends StatelessWidget with ScreenUtils {
  const PersonalSettingsDateBirth({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalSettingsCubit, PersonalSettingsState>(
      builder: (context, state) {
        return DatePicker(
          initialDate: state.userDateBirth,
          label: LocaleKeys.onboarding_dirthDate.tr(),
          lastDate: DateTime.now(),
          hintText: LocaleKeys.onboarding_enterBirthDate.tr(),
          showErrorBorder: state.userDateBirthError,
          onChanged: (date) {
            context.read<PersonalSettingsCubit>().updateState(
                  userDateBirth: date,
                  userDateBirthError:
                      date == null && state.userDateBirth == null,
                );
          },
        );
      },
    );
  }
}
