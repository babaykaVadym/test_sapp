import 'package:flutter/material.dart';
import 'package:widgets_library/core/styles/colors.dart';

class ErrorTextWidget extends StatelessWidget {
  const ErrorTextWidget({super.key, required this.errorText});
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (errorText != null)
          Icon(Icons.error, color: Clr.of(context).errorOrange40, size: 16),
        SizedBox(width: 6),
        Text(
          errorText ?? '',
          style: TextStyle(color: Clr.of(context).errorOrange40),
        ),
      ],
    );
  }
}
