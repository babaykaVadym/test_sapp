import 'package:flutter/material.dart';
import 'package:widgets_library/core/styles/colors.dart';

class SvgIconButton extends StatelessWidget {
  final Widget svgPicture;
  final VoidCallback? onPressed;
  final double? padding;
  final bool addBorder;

  const SvgIconButton({
    super.key,
    required this.svgPicture,
    this.onPressed,
    this.padding,
    this.addBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      shape: CircleBorder(
        side: BorderSide(
          color: addBorder ? Clr.of(context).neutralGrey70 : Colors.transparent,
          width: addBorder ? 1.0 : 0,
          style: BorderStyle.solid,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.all(padding ?? 4.0),
          foregroundDecoration:
              onPressed == null
                  ? BoxDecoration(color: Clr.of(context).neutralGrey70)
                  : null,
          child: svgPicture,
        ),
      ),
    );
  }
}
