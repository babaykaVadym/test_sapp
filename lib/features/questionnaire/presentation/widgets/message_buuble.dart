import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:widgets_library/core/styles/colors.dart';

class SpeechBubble extends StatelessWidget {
  final String title;
  final String text;
  final Color? backgroundColor;
  final Color? borderColor;
  final double borderWidth;
  final double borderRadius;
  final double arrowWidth;
  final double arrowHeight;
  final bool arrowOnLeft;

  const SpeechBubble({
    super.key,
    required this.title,
    required this.text,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth = 1.0,
    this.borderRadius = 12.0,
    this.arrowWidth = 14.0,
    this.arrowHeight = 14.0,
    this.arrowOnLeft = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SpeechBubblePainter(
        backgroundColor: backgroundColor ?? Clr.of(context).primaryBlue90,
        borderColor: borderColor ?? Clr.of(context).primaryBlue40,
        borderWidth: borderWidth,
        borderRadius: borderRadius,
        arrowWidth: arrowWidth,
        arrowHeight: arrowHeight,
        arrowOnLeft: arrowOnLeft,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              style: MainTextStyles.textBaseStyle
                  .copyWith(fontWeight: FontWeight.w700),
            ),
            Text(
              text,
              style: MainTextStyles.textBaseStyle.copyWith(fontSize: 14),
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class SpeechBubblePainter extends CustomPainter {
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final double borderRadius;
  final double arrowWidth;
  final double arrowHeight;
  final bool arrowOnLeft;

  SpeechBubblePainter({
    required this.backgroundColor,
    required this.borderColor,
    required this.borderWidth,
    required this.borderRadius,
    required this.arrowWidth,
    required this.arrowHeight,
    required this.arrowOnLeft,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // We'll build the path for the bubble shape
    final path = Path();

    // To avoid drawing over the border area, shrink our "usable" size a bit
    final double effectiveWidth = size.width;
    final double effectiveHeight = size.height;

    // We'll define some local variables to keep code more readable
    const double left = 0;
    const double top = 0;
    final double right = effectiveWidth;
    final double bottom = effectiveHeight;

    // Because we have an arrow on one side, we must reduce
    // the bubble's main rectangle in that area.
    // If arrow is on the left, the bubble's left rectangle
    // starts after arrowWidth. If arrow is on the right,
    // it ends before arrowWidth.

    final double bubbleLeft = arrowOnLeft ? left + arrowWidth : left;
    final double bubbleRight = arrowOnLeft ? right : right;
    final double r = borderRadius;

    // Start building path around the bubble in a clockwise direction.
    // We'll handle arrowOnLeft vs arrowOnRight logic in the corners.

    // Move to top-left corner (with radius).
    path.moveTo(bubbleLeft + r, top);

    // Top edge + top-right corner
    path.lineTo(bubbleRight - r, top);
    path.quadraticBezierTo(bubbleRight, top, bubbleRight, top + r);

    // Right edge (down) if arrow is on the right, we must incorporate the arrow
    if (!arrowOnLeft) {
      // Move down to bottom - r - arrow
      path.lineTo(bubbleRight, bottom - r);
      path.quadraticBezierTo(bubbleRight, bottom, bubbleRight - r, bottom);

      // Now we do the arrow on the right side
      // We'll move horizontally to bubbleRight + arrowWidth
      // But that extends outside our bubble area. So let's do it carefully:
      path.lineTo(bubbleRight - arrowWidth * 2.6, bottom);
      path.lineTo(
          bubbleRight - arrowHeight * 3.6, bottom + arrowHeight); // arrow tip
      path.lineTo(bubbleRight - arrowWidth * 4.8, bottom);
    } else {
      // No arrow on the right, so just go straight down to bottom - r
      path.lineTo(bubbleRight, bottom - r);
      path.quadraticBezierTo(bubbleRight, bottom, bubbleRight - r, bottom);
    }

    // Bottom edge (to the left)
    path.lineTo(bubbleLeft + r, bottom);
    path.quadraticBezierTo(bubbleLeft, bottom, bubbleLeft, bottom - r);

    // Left edge (going up) + arrow on the left if needed
    if (arrowOnLeft) {
      // Move up to near top - r
      path.lineTo(bubbleLeft, top + r);
      path.quadraticBezierTo(bubbleLeft, top, bubbleLeft + r, top);

      // We also need the arrow on the left, so we actually have to
      // "interrupt" the path. Let's do that carefully.
      // A simpler approach is to do the arrow in the bottom-left corner,
      // but let's keep consistent with the example at the bottom side.
      //
      // If you want the arrow at the bottom-left corner, you'd place
      // the arrow drawing code near the bottom. But let's do the arrow near the top-left
      // for demonstration. Adjust as needed.
      //
      // In practice, you'd move path up to the arrow area, then draw the arrow.

      // Example: arrow at the bottom-left (mirroring the bottom-right logic):
      // So let's adjust the bottom logic if arrowOnLeft is true.

      // This is an alternate approach: We'll handle the arrow near the bottom-left:
      // So we must revise the bottom edge code. We'll do it properly below.
      // For now, let's keep the arrow top-left or bottom-left as you wish.

      // -- If you want arrow at the bottom-left, you'd do something like:
      // path.lineTo(bubbleLeft, bottom - arrowHeight);
      // path.lineTo(bubbleLeft - arrowWidth, bottom);
      // path.lineTo(bubbleLeft, bottom + arrowHeight);
      // and so on, adjusting coordinates accordingly.
    } else {
      // If arrow is not on the left, we just close the path on the top-left
      path.lineTo(bubbleLeft, top + r);
      path.quadraticBezierTo(bubbleLeft, top, bubbleLeft + r, top);
    }

    path.close();

    // 1. Fill the bubble
    final fillPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    canvas.drawPath(path, fillPaint);

    // 2. Draw the border
    if (borderWidth > 0) {
      final strokePaint = Paint()
        ..color = borderColor
        ..style = PaintingStyle.stroke
        ..strokeWidth = borderWidth;
      canvas.drawPath(path, strokePaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
