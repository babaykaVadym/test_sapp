import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helper/system.dart';
import '../../../../core/utils/screen_utils.dart';
import '../cubit/splash_cubit.dart';

class SplashScreen extends StatelessWidget with ScreenUtils {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..init(),
      child: Scaffold(
        body: BlocConsumer<SplashCubit, SplashState>(
          builder: (context, state) {
            return Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    AppImages.splashIcon,
                    height: 184,
                    width: 150,
                  ),
                ),
              ],
            );
          },
          listener: (BuildContext context, state) {
            if (state.error != null) {
              SystemHelper.showToast(
                e: state.error,
              );

              context.read<SplashCubit>().setError();
            }

            if (state.goToHome) {
              context.go(
                ///TODO: uncomment this line after implementing full workflow
                Routes.emotionStatePath,
                // Routes.homePath,
              );
            }
            if (state.goToLogin) {
              context.go(
                Routes.signInPath,
              );
            }

            handleProgress(state.progressOn, context);
          },
        ),
      ),
    );
  }
}
