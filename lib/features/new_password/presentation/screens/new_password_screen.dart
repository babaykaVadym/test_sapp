import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/features/new_password/presentation/widgets/change_password_dialog.dart';
import 'package:flutter_app_scarb/features/new_password/presentation/widgets/new_password_bottom_button.dart';
import 'package:flutter_app_scarb/features/new_password/presentation/widgets/new_password_header_widget.dart';
import 'package:flutter_app_scarb/features/new_password/presentation/widgets/new_password_interaction_form_widget.dart';
import 'package:flutter_app_scarb/features/new_password/presentation/widgets/new_password_title.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_constrain_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/system.dart';
import '../../../../core/utils/screen_utils.dart';
import '../cubit/new_password_cubit.dart';

class NewPasswordScreen extends StatelessWidget with ScreenUtils {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewPasswordCubit(),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<NewPasswordCubit, NewPasswordState>(
            builder: (context, state) {
              return const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: BasicConstants.defaultHorizontalPadding,
                ),
                child: ContentConstrainWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NewPasswordHeaderWidget(),
                      NewPasswordTitleWidget(),
                      spaceVer22,
                      NewPasswordInteractionFormWidget(),
                      Spacer(),
                      NewPasswordBottomButton(),
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

                context.read<NewPasswordCubit>().setError();
              }

              if (state.showPopup) {
                showDialog<int?>(
                    context: context,
                    builder: (_) => const ChangePasswordDialog());
                context.read<NewPasswordCubit>().updateState(
                      showPopup: false,
                      progressOn: false,
                    );
              }

              handleProgress(state.progressOn, context);
            },
          ),
        ),
      ),
    );
  }
}
