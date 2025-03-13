import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/profile_settings/presentation/widgets/profile_text_field.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/screen_utils.dart';
import '../cubit/profile_settings_cubit.dart';

class ProfileSettingsInteractionWidget extends StatelessWidget
    with ScreenUtils {
  const ProfileSettingsInteractionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileSettingsCubit, ProfileSettingsState>(
      builder: (context, state) {
        return Column(
          spacing: 16,
          children: [
            ProfileTextField(
              hitText: LocaleKeys.profileSettings_fullName.tr(),
              label: LocaleKeys.profileSettings_fullName.tr(),
              initValue: state.userName,
              errorText: state.userNameError,
              onChanged: (p0) {
                context.read<ProfileSettingsCubit>().updateUserName(
                    userName: p0,
                    error: p0.isEmpty
                        ? LocaleKeys.registration_thisFieldIsRequired.tr()
                        : null);
              },
            ),
            ProfileTextField(
              readOnly: true,
              hitText: LocaleKeys.profileSettings_yourEmail.tr(),
              label: LocaleKeys.profileSettings_yourEmail.tr(),
              initValue: state.email,
              errorText: state.emailError,
              onChanged: (p0) {},
            ),
          ],
        );
      },
    );
  }
}
