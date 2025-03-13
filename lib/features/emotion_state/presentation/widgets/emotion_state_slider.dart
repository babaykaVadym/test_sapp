import 'package:flutter/material.dart';

class EmotionStateSlider extends StatelessWidget {
  const EmotionStateSlider(
      {super.key,
      required this.scaleAnswerMin,
      required this.scaleAnswerMax,
      required this.onEmotionSelected,
      this.curentIndex});

  final int scaleAnswerMin;
  final int scaleAnswerMax;
  final int? curentIndex;

  final Function(int) onEmotionSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Slider(
          value: curentIndex != null
              ? curentIndex!.toDouble()
              : (scaleAnswerMax / 2).toDouble(),
          min: scaleAnswerMin.toDouble(),
          max: (scaleAnswerMax - 1).toDouble(),
          divisions: (scaleAnswerMax - 1) - scaleAnswerMin,
          onChanged: (newValue) => onEmotionSelected(newValue.toInt()),
        ),
      ],
    );
  }
}
