import 'package:flutter/material.dart';
import 'package:widgets_library/core/consts/button_constants.dart';
import 'package:widgets_library/core/styles/colors.dart';
import 'package:widgets_library/core/styles/text_styles.dart';

import '../progress_indicators/custom_circular_progress_indicator.dart';

/// A primary action button with customizable properties.
///
/// Example:
///
/// Padding(
///   padding: EdgeInsets.symmetric(horizontal: 16),
///   child: PrimaryButton(
///     title: 'Create Account',
///     onTap: () {},
///     isActive: true,
///   ),
/// ),
///

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final bool isActive;
  final bool isLoading;
  final Color? color;
  final Color? highlightColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? titleColor;
  final double? padding;
  final double? height;

  const PrimaryButton({
    super.key,
    required this.title,
    required this.onTap,
    this.isActive = true,
    this.isLoading = false,
    this.color,
    this.borderColor,
    this.titleColor,
    this.highlightColor,
    this.backgroundColor,
    this.padding,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final borderColorWidg =
        borderColor ??
        (isActive
            ? Clr.of(context).primaryBlue20
            : Clr.of(context).primaryBlue80);

    return Container(
      width: double.infinity,
      height: height ?? ButtonConstants.defaultHeight,
      decoration: BoxDecoration(
        color:
            backgroundColor ??
            (isActive
                ? Clr.of(context).primaryBlue40
                : Clr.of(context).primaryBlue80),
        borderRadius: BorderRadius.circular(ButtonConstants.borderRadius),
        border: Border(
          top: BorderSide(
            color: borderColorWidg,
            width: ButtonConstants.unselectedBorderWidth,
          ),
          right: BorderSide(
            color: borderColorWidg,
            width: ButtonConstants.unselectedBorderWidth,
          ),
          bottom: BorderSide(
            color: borderColorWidg,
            width: ButtonConstants.bottomUnselectedBorderWidth,
          ),
          left: BorderSide(
            color: borderColorWidg,
            width: ButtonConstants.unselectedBorderWidth,
          ),
        ),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(ButtonConstants.borderRadius),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(ButtonConstants.borderRadius),
          onTap: isActive ? onTap : null,
          highlightColor:
              highlightColor ??
              Clr.of(context).primaryBlue80.withValues(alpha: 0.3),
          splashColor: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: padding ?? ButtonConstants.defaultPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isLoading)
                  CustomCircularProgressIndicator(
                    color: Clr.of(context).neutralGrey100,
                  )
                else
                  Center(
                    child: Text(
                      title,
                      style: fixelDisplay.s16.h15.w600.copyWith(
                        color: titleColor ?? Clr.of(context).neutralGrey100,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
