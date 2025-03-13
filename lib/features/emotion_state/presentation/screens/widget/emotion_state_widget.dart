import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/features/emotion_state/presentation/cubit/emotion_state_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmotionStateWidget extends StatelessWidget {
  const EmotionStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmotionStateCubit, EmotionStateState>(
      builder: (context, state) {
        return Text(
          state.currentEmotion,
          style: MainTextStyles.textSubTitelStyle,
        );
      },
    );
  }
}
