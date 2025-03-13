import 'package:flutter/material.dart';
import 'package:widgets_library/widgets_library.dart';

class ProfileTextField extends StatelessWidget {
  final String? initValue;
  final String? errorText;
  final String? autofillHints;
  final String label;
  final String hitText;
  final TextInputAction? textInputAction;
  final Function(String)? onFieldSubmitted;
  final Function(String) onChanged;
  final bool? readOnly;

  const ProfileTextField({
    super.key,
    this.initValue,
    this.errorText,
    this.autofillHints,
    this.onFieldSubmitted,
    required this.onChanged,
    required this.label,
    required this.hitText,
    this.textInputAction,
    this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextFormField(
          readOnly: readOnly,
          initialValue: initValue,
          textInputAction: textInputAction ?? TextInputAction.next,
          label: label,
          useInitValue: true,
          hintText: hitText,
          autofillHints: autofillHints,
          keyboardType: TextInputType.emailAddress,
          showErrorBorder: errorText != null,
          onFieldSubmitted: (p0) =>
              onFieldSubmitted != null ? onFieldSubmitted!(p0) : null,
          onChanged: (p0) => onChanged(p0),
        ),
        ErrorTextWidget(
          errorText: errorText,
        ),
      ],
    );
  }
}
