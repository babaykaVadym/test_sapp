import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/features/check_restore_email/presentation/widgets/check_restore_bottom_button.dart';
import 'package:flutter_app_scarb/features/check_restore_email/presentation/widgets/check_restore_header_widget.dart';
import 'package:flutter_app_scarb/features/check_restore_email/presentation/widgets/check_restore_repead_send_widget.dart';
import 'package:flutter_app_scarb/features/check_restore_email/presentation/widgets/check_restore_title.dart';
import 'package:flutter_app_scarb/features/forgot_password/presentation/cubit/forgot_password_cubit.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_constrain_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/system.dart';
import '../../../../core/utils/screen_utils.dart';

class CheckRestoreEmailScreen extends StatelessWidget with ScreenUtils {
  const CheckRestoreEmailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
          builder: (context, state) {
            return const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: BasicConstants.defaultHorizontalPadding,
              ),
              child: ContentConstrainWidget(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CheckRestoreHeaderWidget(),
                    CheckRestoreTitleWidget(),
                    spaceVer16,
                    CheckRestoreRepeadSendWidget(),
                    Spacer(),
                    CheckRestoreBottomButton(),
                  ],
                ),
              ),
            );
          },
          listener: (BuildContext context, state) {
            if (state.error != null) {
              SystemHelper.showToast(
                e: state.error,
              );

              context.read<ForgotPasswordCubit>().setError();
            }

            handleProgress(state.progressOn, context);
          },
        ),
      ),
    );
  }
}
