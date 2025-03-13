import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/features/profile_settings/presentation/cubit/profile_settings_cubit.dart';
import 'package:flutter_app_scarb/features/profile_settings/presentation/widgets/delete_profile_dialog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/core/styles/colors.dart';

class DeleteProfileBtnWidget extends StatelessWidget {
  const DeleteProfileBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            showDialog<DateTime?>(
                context: context,
                builder: (_) => DeleteProfileDialog(
                      onDelete: () {
                        context
                            .read<ProfileSettingsCubit>()
                            .deleteProfile(context);
                      },
                    ));
          },
          child: Text(
            LocaleKeys.profileSettings_deleteProfile.tr(),
            style: MainTextStyles.textBaseStyle.copyWith(
              color: Clr.of(context).primaryBlue40,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
