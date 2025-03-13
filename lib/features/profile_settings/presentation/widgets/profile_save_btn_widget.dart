import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/profile_settings/presentation/cubit/profile_settings_cubit.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/core/widgets/buttons/primary_button.dart';

class ProfileSaveBtnWidget extends StatelessWidget {
  const ProfileSaveBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileSettingsCubit, ProfileSettingsState>(
      builder: (context, state) {
        return PrimaryButton(
          title: LocaleKeys.profileSettings_saveBtn.tr(),
          onTap: () {
            context.read<ProfileSettingsCubit>().saveChange();
          },
        );
      },
    );
  }
}
