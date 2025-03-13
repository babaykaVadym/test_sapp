import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/features/profile_settings/presentation/cubit/profile_settings_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/core/styles/colors.dart';

class AvatarProfileWidget extends StatelessWidget {
  const AvatarProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileSettingsCubit, ProfileSettingsState>(
      builder: (context, state) {
        return Column(
          children: [
            const Icon(
              Icons.person,
              size: 120,
            ),
            spaceVer18,
            Text(
              LocaleKeys.profileSettings_changeAvatar.tr(),
              style: MainTextStyles.textBaseStyle.copyWith(
                color: Clr.of(context).primaryBlue40,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        );
      },
    );
  }
}
