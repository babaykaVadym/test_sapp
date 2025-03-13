import 'package:flutter/material.dart';
import 'package:widgets_library/core/consts/button_constants.dart';
import 'package:widgets_library/core/styles/colors.dart';
import 'package:widgets_library/core/styles/text_styles.dart';

import '../progress_indicators/custom_circular_progress_indicator.dart';

/// A choice action button with customizable properties.
///
/// Example:
///
/// Padding(
///   padding: EdgeInsets.symmetric(horizontal: 16),
///   child: ChoiceButton(
///     title: 'choice',
///     onTap: () {},
///     isSelected: true,
///   ),
/// ),
///

class ChoiceButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final bool isSelected;
  final bool isLoading;
  final Color? color;
  final double? padding;
  final double? height;

  const ChoiceButton({
    super.key,
    required this.title,
    required this.onTap,
    this.isSelected = true,
    this.isLoading = false,
    this.color,
    this.padding,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height ?? ButtonConstants.defaultHeight,
      decoration: BoxDecoration(
        color:
            isSelected
                ? Clr.of(context).primaryBlue90
                : Clr.of(context).neutralGrey100,
        borderRadius: BorderRadius.circular(ButtonConstants.borderRadius),
        border: Border(
          top: BorderSide(
            color:
                isSelected
                    ? Clr.of(context).primaryBlue40
                    : Clr.of(context).neutralGrey70,
            width:
                isSelected
                    ? ButtonConstants.selectedBorderWidth
                    : ButtonConstants.unselectedBorderWidth,
          ),
          right: BorderSide(
            color:
                isSelected
                    ? Clr.of(context).primaryBlue40
                    : Clr.of(context).neutralGrey70,
            width:
                isSelected
                    ? ButtonConstants.selectedBorderWidth
                    : ButtonConstants.unselectedBorderWidth,
          ),
          bottom: BorderSide(
            color:
                isSelected
                    ? Clr.of(context).primaryBlue40
                    : Clr.of(context).neutralGrey70,
            width:
                isSelected
                    ? ButtonConstants.selectedBorderWidth
                    : ButtonConstants.bottomUnselectedBorderWidth,
          ),
          left: BorderSide(
            color:
                isSelected
                    ? Clr.of(context).primaryBlue40
                    : Clr.of(context).neutralGrey70,
            width:
                isSelected
                    ? ButtonConstants.selectedBorderWidth
                    : ButtonConstants.unselectedBorderWidth,
          ),
        ),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(ButtonConstants.borderRadius),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(ButtonConstants.borderRadius),
          onTap: onTap,
          highlightColor:
              isSelected
                  ? Clr.of(context).primaryBlue40.withValues(alpha: 0.1)
                  : Clr.of(context).neutralGrey90.withValues(alpha: 0.3),
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
                    color: Clr.of(context).neutralGrey0,
                  )
                else
                  Center(
                    child: Text(
                      title,
                      style: fixelDisplay.s16.h15.w600.copyWith(
                        color:
                            isSelected
                                ? Clr.of(context).primaryBlue40
                                : Clr.of(context).neutralGrey0,
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
