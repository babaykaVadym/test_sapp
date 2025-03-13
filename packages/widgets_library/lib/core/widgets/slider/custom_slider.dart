import 'package:flutter/material.dart';
import 'package:widgets_library/core/styles/color_themes.dart';

class RectangularSliderThumb extends SliderComponentShape {
  final double thumbWidth;
  final double thumbHeight;
  final double horizontalPadding;
  final double borderRadius;
  final Color thumbColor;
  final Color borderColor;
  final double borderWidth;

  const RectangularSliderThumb({
    this.thumbWidth = 10.0,
    this.thumbHeight = 56.0,
    this.horizontalPadding = 0.0,
    this.borderRadius = 6.0,
    this.thumbColor = DarkTheme.secondaryGreen40,
    this.borderColor = DarkTheme.neutralGrey100,
    this.borderWidth = 6.0,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(thumbWidth + horizontalPadding, thumbHeight);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    bool isDiscrete = false,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    double value = 0.0,
    double textScaleFactor = 1.0,
    Size sizeWithOverflow = Size.zero,
  }) {
    final Canvas canvas = context.canvas;

    final double offsetX = horizontalPadding / 2;

    final Offset topLeft = Offset(
      center.dx - thumbWidth / 2 + offsetX,
      center.dy - thumbHeight / 2,
    );
    final Rect thumbRect = topLeft & Size(thumbWidth, thumbHeight);

    final RRect rrect = RRect.fromRectAndRadius(
      thumbRect,
      Radius.circular(borderRadius),
    );

    final Paint fillPaint =
        Paint()
          ..color = thumbColor
          ..style = PaintingStyle.fill;
    canvas.drawRRect(rrect, fillPaint);

    final Paint borderPaint =
        Paint()
          ..color = borderColor
          ..strokeWidth = borderWidth
          ..style = PaintingStyle.stroke;
    canvas.drawRRect(rrect, borderPaint);
  }
}
