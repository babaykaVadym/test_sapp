import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/utils/diaologs/log_out_dialog.dart';
import 'package:flutter_app_scarb/features/account_settings/presentation/cubit/account_settings_cubit.dart';
import 'package:flutter_app_scarb/features/account_settings/presentation/widgets/account_settings_button_view.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountLogOutWidget extends StatelessWidget {
  const AccountLogOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AccountSettingsButtonView(
      iconPath: SvgImages.accountSettingsSubdirectoryArrowRight,
      label: LocaleKeys.accountSettings_logOutOfAccount.tr(),
      onTap: () async {
        await showDialog(
            context: context,
            builder: (_) => LogOutDialog(
                  logOutTap: () async {
                    context.read<AccountSettingsCubit>().logOut(context);
                  },
                ));
      },
    );
  }
}
