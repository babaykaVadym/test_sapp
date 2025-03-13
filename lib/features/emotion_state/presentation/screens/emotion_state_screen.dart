import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/utils/screen_utils.dart';
import 'package:flutter_app_scarb/features/emotion_state/presentation/screens/widget/emotion_state_image_widget.dart';
import 'package:flutter_app_scarb/features/emotion_state/presentation/screens/widget/emotion_state_title_widget.dart';
import 'package:flutter_app_scarb/features/emotion_state/presentation/screens/widget/emotion_state_widget.dart';
import 'package:flutter_app_scarb/features/emotion_state/presentation/widgets/emotion_state_slider.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_constrain_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/features/registration/presentation/widgets/bottom_button_section.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_library/core/styles/colors.dart';

import '../../../../core/helper/system.dart';
import '../cubit/emotion_state_cubit.dart';

class EmotionStateScreen extends StatelessWidget with ScreenUtils {
  const EmotionStateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmotionStateCubit(),
      child: Scaffold(
        backgroundColor: Clr.of(context).neutralGrey100,
        body: SafeArea(
          child: BlocConsumer<EmotionStateCubit, EmotionStateState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: BasicConstants.defaultHorizontalPadding,
                ),
                child: ContentConstrainWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      spaceVer16,
                      const EmotionStateTitleWidget(),
                      ContentScrollBuilder(
                        child: Column(
                          children: [
                            const Spacer(),
                            const EmotionStateImageWidget(),
                            spaceVer32,
                            const EmotionStateWidget(),
                            const Spacer(),
                            EmotionStateSlider(
                              onEmotionSelected: (index) {
                                context
                                    .read<EmotionStateCubit>()
                                    .updateIndex(index);
                              },
                              curentIndex: state.currentEmotionIndex,
                              scaleAnswerMax: state.maxEmotionIndex,
                              scaleAnswerMin: state.minEmotionIndex,
                            ),
                            spaceVer12,
                            BottomButtonSection(onTap: () {
                              context.go(Routes.homePath);
                            }),
                          ],
                        ),
                      ),
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

                context.read<EmotionStateCubit>().setError();
              }

              handleProgress(state.progressOn, context);
            },
          ),
        ),
      ),
    );
  }
}
