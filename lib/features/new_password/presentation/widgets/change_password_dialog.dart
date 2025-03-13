import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/features/new_password/presentation/cubit/new_password_cubit.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_library/core/styles/colors.dart';

class ChangePasswordDialog extends StatefulWidget {
  const ChangePasswordDialog({super.key});

  @override
  State<ChangePasswordDialog> createState() => _KidsCountDialogState();
}

class _KidsCountDialogState extends State<ChangePasswordDialog> {
  int selectedQuantity = 1;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: StatefulBuilder(
        builder: (context, setState) {
          return SizedBox(
            height: 110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 4,
              children: [
                Text(
                  LocaleKeys.newPassword_passwordSuccessfullyRecovered.tr(),
                  style: MainTextStyles.subtitle(context),
                ),
                Text(
                  LocaleKeys.newPassword_youHaveSuccessfullyUpdatedPassword
                      .tr(),
                  style: MainTextStyles.textDefaultStyle,
                ),
              ],
            ),
          );
        },
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            LocaleKeys.newPassword_getOutBtn.tr(),
            style: MainTextStyles.textDefaultStyle,
          ),
        ),
        TextButton(
          onPressed: () async {
            context.read<NewPasswordCubit>().clearEmail();
            context.go(
              Routes.signInPath,
            );
          },
          child: Text(
            LocaleKeys.newPassword_logInToTheApp.tr(),
            style: MainTextStyles.textDefaultBoldStyle.copyWith(
              color: Clr.of(context).primaryBlue40,
            ),
          ),
        ),
      ],
    );
  }
}
