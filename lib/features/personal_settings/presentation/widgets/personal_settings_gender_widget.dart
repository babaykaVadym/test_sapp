import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/gender/widget/gender_item_list.dart';
import 'package:flutter_app_scarb/features/personal_settings/presentation/cubit/personal_settings_cubit.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/widgets_library.dart';

import '../../../../core/utils/screen_utils.dart';

class PersonalSettingsGenderWidget extends StatelessWidget with ScreenUtils {
  const PersonalSettingsGenderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalSettingsCubit, PersonalSettingsState>(
      builder: (context, state) {
        return AppDropdownWidget<String>(
          onChanged: (p0) {
            context.read<PersonalSettingsCubit>().updateState(
                  userGender: p0,
                );
          },
          labelText: LocaleKeys.personalSettings_yourGender.tr(),
          value: genderItemList.any(
            (p0) => p0.value == state.userGender,
          )
              ? state.userGender
              : null,
          items: genderItemList
              .map((p0) => DropdownMenuItem<String>(
                    value: p0.value,
                    child: Text(p0.label),
                  ))
              .toList(),
        );
      },
    );
  }
}
