import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/features/forgot_password/presentation/widgets/forgot_password_bottom_button.dart';
import 'package:flutter_app_scarb/features/forgot_password/presentation/widgets/forgot_password_header_widget.dart';
import 'package:flutter_app_scarb/features/forgot_password/presentation/widgets/forgot_password_interaction_form_widget.dart';
import 'package:flutter_app_scarb/features/forgot_password/presentation/widgets/forgot_password_title.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_constrain_widget.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helper/system.dart';
import '../../../../core/utils/screen_utils.dart';
import '../cubit/forgot_password_cubit.dart';

class ForgotPasswordScreen extends StatelessWidget with ScreenUtils {
  const ForgotPasswordScreen({super.key});

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
                    ForgotPasswordHeaderWidget(),
                    ForgotPasswordTitleWidget(),
                    ForgotPasswordInteractionFormWidget(),
                    Spacer(),
                    ForgotPasswordBottomButton(),
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
            if (state.goToCheckEmail) {
              context.read<ForgotPasswordCubit>().updateState(
                    goToCheckEmail: false,
                    progressOn: false,
                  );

              context.push(
                Routes.forgotPasswordPath + Routes.checkEmailPath,
                extra: state.userEmail,
              );
            }

            handleProgress(state.progressOn, context);
          },
        ),
      ),
    );
  }
}
