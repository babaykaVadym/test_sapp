import 'package:flutter/material.dart';
import 'package:widgets_library/core/consts/button_constants.dart';
import 'package:widgets_library/core/styles/colors.dart';
import 'package:widgets_library/core/styles/text_styles.dart';

import '../progress_indicators/custom_circular_progress_indicator.dart';

/// A secondary action button with customizable properties.
///
/// Example:
///
/// Padding(
///   padding: EdgeInsets.symmetric(horizontal: 16),
///   child: SecondaryButton(
///     title: 'Create Account',
///     onTap: () {},
///     isActive: true,
///   ),
/// ),
///

class SecondaryButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final bool isActive;
  final bool isLoading;
  final Color? color;
  final Color? highlightColor;
  final Color? backgroundColor;
  final double? padding;
  final double? height;

  const SecondaryButton({
    super.key,
    required this.title,
    required this.onTap,
    this.isActive = true,
    this.isLoading = false,
    this.color,
    this.highlightColor,
    this.backgroundColor,
    this.padding,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height ?? ButtonConstants.defaultHeight,
      decoration: BoxDecoration(
        color: backgroundColor ?? Clr.of(context).primaryBlue90,
        borderRadius: BorderRadius.circular(ButtonConstants.borderRadius),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(ButtonConstants.borderRadius),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(ButtonConstants.borderRadius),
          onTap: isActive ? onTap : null,
          highlightColor:
              highlightColor ??
              Clr.of(context).primaryBlue40.withValues(alpha: 0.2),
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
                    color: Clr.of(context).primaryBlue40,
                  )
                else
                  Center(
                    child: Text(
                      title,
                      style: fixelDisplay.s16.h15.w600.copyWith(
                        color:
                            isActive
                                ? Clr.of(context).primaryBlue40
                                : Clr.of(context).primaryBlue40.withAlpha(50),
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
