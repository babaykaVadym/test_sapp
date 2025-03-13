import 'package:flutter/material.dart';
import 'package:widgets_library/core/styles/colors.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  final double? size;
  final double? strokeWidth;
  final Color? color;

  static const double defaultSize = 20;
  static const double defaultStrokeWidth = 2;

  const CustomCircularProgressIndicator({
    super.key,
    this.size,
    this.strokeWidth,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size ?? defaultSize,
      width: size ?? defaultSize,
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth ?? defaultStrokeWidth,
        color: color ?? Clr.of(context).neutralGrey0,
      ),
    );
  }
}
