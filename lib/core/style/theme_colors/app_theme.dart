import 'package:flutter/material.dart';
import 'package:widgets_library/widgets_library.dart';

final themeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: DarkTheme.primaryBlue40,
  ),
  useMaterial3: false,
  sliderTheme: const SliderThemeData(
    thumbShape: RectangularSliderThumb(),
    activeTrackColor: DarkTheme.secondaryGreen40,
    inactiveTrackColor: DarkTheme.secondaryGreen70,
    inactiveTickMarkColor: DarkTheme.secondaryGreen40,
    activeTickMarkColor: DarkTheme.secondaryGreen40,
    trackHeight: 16,
    overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
    overlayColor: Colors.transparent,
  ),
  checkboxTheme: CheckboxThemeData(
    side: WidgetStateBorderSide.resolveWith((states) {
      return const BorderSide(color: DarkTheme.primaryBlue60, width: 2);
    }),
    splashRadius: 0,
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return DarkTheme.primaryBlue60;
      }
      return Colors.transparent;
    }),
  ),
  datePickerTheme: DatePickerThemeData(
    headerForegroundColor: DarkTheme.neutralGrey0,
    headerBackgroundColor: DarkTheme.neutralGrey100,
    todayForegroundColor: WidgetStateProperty.all(
      DarkTheme.primaryBlue40,
    ),
    todayBackgroundColor: WidgetStateProperty.all(
      Colors.transparent,
    ),
    dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return DarkTheme.primaryBlue40;
      }
      return null;
    }),
    confirmButtonStyle: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(
        DarkTheme.primaryBlue40,
      ),
    ),
    cancelButtonStyle: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(
        DarkTheme.neutralGrey40,
      ),
    ),
  ),
);
