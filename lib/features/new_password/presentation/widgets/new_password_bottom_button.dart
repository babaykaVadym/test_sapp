import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/new_password/presentation/cubit/new_password_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/widgets_library.dart';

import '../../../../core/style/consts/basic_constants.dart';
import '../../../../core/translations/local_keys.g.dart';

class NewPasswordBottomButton extends StatelessWidget {
  const NewPasswordBottomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Clr.of(context).neutralGrey100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 26,
              left: BasicConstants.defaultHorizontalPadding,
              right: BasicConstants.defaultHorizontalPadding,
            ),
            child: PrimaryButton(
              title: LocaleKeys.newPassword_continueBtn.tr(),
              onTap: () async {
                context.read<NewPasswordCubit>().setNewPassword();
              },
            ),
          ),
        ],
      ),
    );
  }
}
