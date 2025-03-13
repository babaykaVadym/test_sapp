import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/tech_affinity/widget/tech_affinity_item_list.dart';
import 'package:flutter_app_scarb/features/personal_settings/presentation/cubit/personal_settings_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/widgets_library.dart';

import '../../../../core/utils/screen_utils.dart';

class PersonalSettingsDigitalTechnologiesWidget extends StatelessWidget
    with ScreenUtils {
  const PersonalSettingsDigitalTechnologiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalSettingsCubit, PersonalSettingsState>(
      builder: (context, state) {
        return AppDropdownWidget<int>(
          onChanged: (p0) {
            context.read<PersonalSettingsCubit>().updateState(
                  techAffinity: p0,
                );
          },
          labelText: LocaleKeys
              .personalSettings_attitudeTowardsDigitalTechnologies
              .tr(),
          value: techAffinityItemList.any(
            (p0) => p0.priorityValue == state.techAffinity,
          )
              ? state.techAffinity
              : null,
          items: techAffinityItemList
              .map((p0) => DropdownMenuItem<int>(
                    value: p0.priorityValue,
                    child: Text(p0.label),
                  ))
              .toList(),
        );
      },
    );
  }
}
