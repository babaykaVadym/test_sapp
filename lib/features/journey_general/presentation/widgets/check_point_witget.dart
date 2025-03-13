import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/button_constants.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:widgets_library/core/styles/colors.dart';

class CheckPointWitget extends StatelessWidget {
  const CheckPointWitget(
      {super.key,
      this.textColor,
      this.borderColor,
      this.label,
      this.currentCheckPoint = false,
      this.bodyColor,
      this.shadowColor});

  final Color? textColor;
  final Color? borderColor;
  final Color? bodyColor;
  final Color? shadowColor;
  final String? label;
  final bool currentCheckPoint;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: currentCheckPoint
            ? bodyColor ?? Clr.of(context).primaryBlue60
            : Clr.of(context).neutralGrey100,
        border: Border(
          top: BorderSide(
            color: borderColor ?? Clr.of(context).primaryBlue50,
            width: ButtonConstants.unselectedBorderWidth,
          ),
          right: BorderSide(
            color: borderColor ?? Clr.of(context).primaryBlue50,
            width: ButtonConstants.unselectedBorderWidth,
          ),
          bottom: BorderSide(
            color: borderColor ?? Clr.of(context).primaryBlue50,
            width: ButtonConstants.bottomUnselectedBorderWidth,
          ),
          left: BorderSide(
            color: borderColor ?? Clr.of(context).primaryBlue50,
            width: ButtonConstants.unselectedBorderWidth,
          ),
        ),
        borderRadius: BorderRadius.circular(14),
        boxShadow: currentCheckPoint
            ? [
                BoxShadow(
                  color: shadowColor ?? Clr.of(context).primaryBlue80,
                  spreadRadius: 10,
                  blurRadius: 0,
                  offset: const Offset(0, 0),
                ),
              ]
            : null,
      ),
      child: Center(
        child: Text(
          'Check Point ${label ?? '1'}',
          style: MainTextStyles.textBaseStyle.copyWith(
              color: currentCheckPoint
                  ? Clr.of(context).neutralGrey100
                  : textColor ?? Clr.of(context).primaryBlue40,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
