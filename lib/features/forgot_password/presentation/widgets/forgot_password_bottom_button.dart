import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/forgot_password/presentation/cubit/forgot_password_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/widgets_library.dart';

import '../../../../core/style/consts/basic_constants.dart';
import '../../../../core/translations/local_keys.g.dart';

class ForgotPasswordBottomButton extends StatelessWidget {
  const ForgotPasswordBottomButton({
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
              title: LocaleKeys.forgotPassword_continueBtn.tr(),
              onTap: () {
                context.read<ForgotPasswordCubit>().restorePassword();
              },
            ),
          ),
        ],
      ),
    );
  }
}
