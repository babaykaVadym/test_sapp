import 'package:flutter/material.dart';
import 'package:widgets_library/core/styles/colors.dart';

class CustomLinearProgressIndicator extends StatelessWidget {
  const CustomLinearProgressIndicator({
    super.key,
    required this.stepIndex,
    required this.currentStepIndex,
    required Animation<double> animation,
  }) : _animation = animation;

  final int stepIndex;
  final int currentStepIndex;
  final Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: stepIndex == currentStepIndex
          ? _animation.value
          : (stepIndex < currentStepIndex ? 1.0 : 0.0),
      backgroundColor: Colors.grey[300],
      valueColor: AlwaysStoppedAnimation<Color>(Clr.of(context).primaryBlue40),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
