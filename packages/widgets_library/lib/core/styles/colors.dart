import 'package:flutter/material.dart';

import 'color_themes.dart';

/// ClrThemeWidget is a StatefulWidget that holds the current theme state
/// and manages the theme switching.
class ClrThemeWidget extends StatefulWidget {
  const ClrThemeWidget({
    super.key,
    required this.child,
    required this.isDarkTheme,
  });

  final Widget child;
  final bool isDarkTheme;

  @override
  State<ClrThemeWidget> createState() => _ClrThemeWidgetState();
}

class _ClrThemeWidgetState extends State<ClrThemeWidget> {
  late bool isDarkMode;

  @override
  void initState() {
    isDarkMode = widget.isDarkTheme;
    super.initState();
  }

  ///Toggles the theme between light and dark mode
  void changeTheme({required bool isDarkMode}) {
    setState(() => this.isDarkMode = isDarkMode);
  }

  @override
  Widget build(BuildContext context) {
    return Clr(isDarkMode: isDarkMode, child: widget.child);
  }
}

/// InheritedWidget to propagate theme changes throughout the widget tree
class Clr extends InheritedWidget {
  const Clr({super.key, required super.child, this.isDarkMode = false});

  final bool isDarkMode;

  static Clr of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Clr>()!;
  }

  static void switchTheme(BuildContext context) {
    final state = context.findAncestorStateOfType<_ClrThemeWidgetState>()!;
    state.changeTheme(isDarkMode: !state.isDarkMode);
  }

  static bool isDarkTheme(BuildContext context) {
    final state = context.findAncestorStateOfType<_ClrThemeWidgetState>()!;
    return state.isDarkMode;
  }

  @override
  bool updateShouldNotify(covariant Clr oldWidget) {
    return oldWidget.isDarkMode != isDarkMode;
  }

  // Primary Blue
  Color get primaryBlue0 =>
      isDarkMode ? DarkTheme.primaryBlue0 : LightTheme.primaryBlue0;

  Color get primaryBlue10 =>
      isDarkMode ? DarkTheme.primaryBlue10 : LightTheme.primaryBlue10;

  Color get primaryBlue20 =>
      isDarkMode ? DarkTheme.primaryBlue20 : LightTheme.primaryBlue20;

  Color get primaryBlue30 =>
      isDarkMode ? DarkTheme.primaryBlue30 : LightTheme.primaryBlue30;

  Color get primaryBlue40 =>
      isDarkMode ? DarkTheme.primaryBlue40 : LightTheme.primaryBlue40;

  Color get primaryBlue50 =>
      isDarkMode ? DarkTheme.primaryBlue50 : LightTheme.primaryBlue50;

  Color get primaryBlue60 =>
      isDarkMode ? DarkTheme.primaryBlue60 : LightTheme.primaryBlue60;

  Color get primaryBlue80 =>
      isDarkMode ? DarkTheme.primaryBlue80 : LightTheme.primaryBlue80;

  Color get primaryBlue90 =>
      isDarkMode ? DarkTheme.primaryBlue90 : LightTheme.primaryBlue90;

  // Secondary Green
  Color get secondaryGreen0 =>
      isDarkMode ? DarkTheme.secondaryGreen0 : LightTheme.secondaryGreen0;

  Color get secondaryGreen10 =>
      isDarkMode ? DarkTheme.secondaryGreen10 : LightTheme.secondaryGreen10;

  Color get secondaryGreen20 =>
      isDarkMode ? DarkTheme.secondaryGreen20 : LightTheme.secondaryGreen20;

  Color get secondaryGreen30 =>
      isDarkMode ? DarkTheme.secondaryGreen30 : LightTheme.secondaryGreen30;

  Color get secondaryGreen40 =>
      isDarkMode ? DarkTheme.secondaryGreen40 : LightTheme.secondaryGreen40;

  Color get secondaryGreen50 =>
      isDarkMode ? DarkTheme.secondaryGreen50 : LightTheme.secondaryGreen50;

  Color get secondaryGreen60 =>
      isDarkMode ? DarkTheme.secondaryGreen60 : LightTheme.secondaryGreen60;

  Color get secondaryGreen70 =>
      isDarkMode ? DarkTheme.secondaryGreen70 : LightTheme.secondaryGreen70;

  Color get secondaryGreen80 =>
      isDarkMode ? DarkTheme.secondaryGreen80 : LightTheme.secondaryGreen80;

  Color get secondaryGreen90 =>
      isDarkMode ? DarkTheme.secondaryGreen90 : LightTheme.secondaryGreen90;

  // Tertiary Yellow
  Color get tertiaryYellow0 =>
      isDarkMode ? DarkTheme.tertiaryYellow0 : LightTheme.tertiaryYellow0;

  Color get tertiaryYellow10 =>
      isDarkMode ? DarkTheme.tertiaryYellow10 : LightTheme.tertiaryYellow10;

  Color get tertiaryYellow20 =>
      isDarkMode ? DarkTheme.tertiaryYellow20 : LightTheme.tertiaryYellow20;

  Color get tertiaryYellow30 =>
      isDarkMode ? DarkTheme.tertiaryYellow30 : LightTheme.tertiaryYellow30;

  Color get tertiaryYellow40 =>
      isDarkMode ? DarkTheme.tertiaryYellow40 : LightTheme.tertiaryYellow40;

  Color get tertiaryYellow50 =>
      isDarkMode ? DarkTheme.tertiaryYellow50 : LightTheme.tertiaryYellow50;

  Color get tertiaryYellow60 =>
      isDarkMode ? DarkTheme.tertiaryYellow60 : LightTheme.tertiaryYellow60;

  Color get tertiaryYellow70 =>
      isDarkMode ? DarkTheme.tertiaryYellow70 : LightTheme.tertiaryYellow70;

  Color get tertiaryYellow90 =>
      isDarkMode ? DarkTheme.tertiaryYellow90 : LightTheme.tertiaryYellow90;

  // Error Orange
  Color get errorOrange0 =>
      isDarkMode ? DarkTheme.errorOrange0 : LightTheme.errorOrange0;

  Color get errorOrange10 =>
      isDarkMode ? DarkTheme.errorOrange10 : LightTheme.errorOrange10;

  Color get errorOrange20 =>
      isDarkMode ? DarkTheme.errorOrange20 : LightTheme.errorOrange20;

  Color get errorOrange30 =>
      isDarkMode ? DarkTheme.errorOrange30 : LightTheme.errorOrange30;

  Color get errorOrange40 =>
      isDarkMode ? DarkTheme.errorOrange40 : LightTheme.errorOrange40;

  Color get errorOrange50 =>
      isDarkMode ? DarkTheme.errorOrange50 : LightTheme.errorOrange50;

  Color get errorOrange60 =>
      isDarkMode ? DarkTheme.errorOrange60 : LightTheme.errorOrange60;

  Color get errorOrange70 =>
      isDarkMode ? DarkTheme.errorOrange70 : LightTheme.errorOrange70;

  Color get errorOrange80 =>
      isDarkMode ? DarkTheme.errorOrange80 : LightTheme.errorOrange80;

  Color get errorOrange90 =>
      isDarkMode ? DarkTheme.errorOrange90 : LightTheme.errorOrange90;

  // Neutral Grey
  Color get neutralGrey0 =>
      isDarkMode ? DarkTheme.neutralGrey0 : LightTheme.neutralGrey0;

  Color get neutralGrey10 =>
      isDarkMode ? DarkTheme.neutralGrey10 : LightTheme.neutralGrey10;

  Color get neutralGrey20 =>
      isDarkMode ? DarkTheme.neutralGrey20 : LightTheme.neutralGrey20;

  Color get neutralGrey30 =>
      isDarkMode ? DarkTheme.neutralGrey30 : LightTheme.neutralGrey30;

  Color get neutralGrey40 =>
      isDarkMode ? DarkTheme.neutralGrey40 : LightTheme.neutralGrey40;

  Color get neutralGrey50 =>
      isDarkMode ? DarkTheme.neutralGrey50 : LightTheme.neutralGrey50;

  Color get neutralGrey60 =>
      isDarkMode ? DarkTheme.neutralGrey60 : LightTheme.neutralGrey60;

  Color get neutralGrey70 =>
      isDarkMode ? DarkTheme.neutralGrey70 : LightTheme.neutralGrey70;

  Color get neutralGrey80 =>
      isDarkMode ? DarkTheme.neutralGrey80 : LightTheme.neutralGrey80;

  Color get neutralGrey90 =>
      isDarkMode ? DarkTheme.neutralGrey90 : LightTheme.neutralGrey90;

  Color get neutralGrey95 =>
      isDarkMode ? DarkTheme.neutralGrey95 : LightTheme.neutralGrey95;

  Color get neutralGrey100 =>
      isDarkMode ? DarkTheme.neutralGrey100 : LightTheme.neutralGrey100;
}
