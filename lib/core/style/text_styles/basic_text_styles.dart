import 'package:flutter/material.dart';
import 'package:widgets_library/core/styles/color_themes.dart';
import 'package:widgets_library/core/styles/text_styles.dart';

class MainTextStyles {
  static title(BuildContext context) =>
      fixelDisplay.s16.h14.w500.neutralGrey20(context);

  static subtitle(BuildContext context) =>
      fixelDisplay.s28.h12.w700.neutralGrey0(context);

  static const textDefaultStyle = TextStyle(
    color: DarkTheme.neutralGrey0,
    fontSize: 14,
    fontFamily: 'FixelDisplay',
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static const textDefaultBoldStyle = TextStyle(
    color: DarkTheme.neutralGrey0,
    fontSize: 14,
    fontFamily: 'FixelDisplay',
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  static const textBaseStyle = TextStyle(
    color: DarkTheme.neutralGrey0,
    fontSize: 16,
    fontFamily: 'FixelDisplay',
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static const textBaseBoldStyle = TextStyle(
    color: DarkTheme.neutralGrey0,
    fontSize: 16,
    fontFamily: 'FixelDisplay',
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  static const textTitelStyle = TextStyle(
    color: DarkTheme.neutralGrey0,
    fontSize: 20,
    fontFamily: 'FixelDisplay',
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );
  static const textSubTitelStyle = TextStyle(
    color: DarkTheme.neutralGrey0,
    fontSize: 22,
    fontFamily: 'FixelDisplay',
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  static const textSubTitelBoldStyle = TextStyle(
    color: DarkTheme.neutralGrey0,
    fontSize: 22,
    fontFamily: 'FixelDisplay',
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  static const textNavigationStyle = TextStyle(
    color: DarkTheme.neutralGrey80,
    fontSize: 12,
    fontFamily: 'FixelDisplay',
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );

  static const textNavigationActiveStyle = TextStyle(
    color: DarkTheme.primaryBlue40,
    fontSize: 12,
    fontFamily: 'FixelDisplay',
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );
}
