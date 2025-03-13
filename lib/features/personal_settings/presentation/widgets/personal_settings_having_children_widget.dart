import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/childrens/widget/kids_count_dialog.dart';
import 'package:flutter_app_scarb/features/personal_settings/presentation/cubit/personal_settings_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/core/widgets/ui_component/app_text_form_field.dart';

import '../../../../core/utils/screen_utils.dart';

class PersonalSettingsHavingChildrenWidget extends StatelessWidget
    with ScreenUtils {
  const PersonalSettingsHavingChildrenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalSettingsCubit, PersonalSettingsState>(
      builder: (context, state) {
        return AppTextFormField(
          readOnly: true,
          useInitValue: true,
          label: LocaleKeys.personalSettings_havingChildren.tr(),
          initialValue: state.kidsCount?.toString(),
          onTap: () async {
            final count = await showDialog<int?>(
                context: context, builder: (_) => const KidsCountDialog());
            if (!context.mounted) return;
            context.read<PersonalSettingsCubit>().updateState(
                  kidsCount: count,
                );
          },
        );
      },
    );
  }
}
