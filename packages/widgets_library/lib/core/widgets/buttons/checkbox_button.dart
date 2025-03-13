import 'package:flutter/material.dart';
import 'package:widgets_library/core/styles/colors.dart';

class CheckboxButton extends StatelessWidget {
  const CheckboxButton({
    super.key,
    required this.initValue,
    required this.onChanged,
  });
  final bool? initValue;
  final Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      onChanged: (value) => onChanged(value),
      activeColor: Clr.of(context).primaryBlue60,
      value: initValue ?? false,
    );
  }
}
