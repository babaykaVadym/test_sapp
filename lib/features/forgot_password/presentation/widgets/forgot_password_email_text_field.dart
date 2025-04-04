import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:widgets_library/widgets_library.dart';

class ForgotPasswordEmailTextField extends StatelessWidget {
  final String? initValue;
  final String? errorText;
  final String? autofillHints;
  final Function(String)? onFieldSubmitted;
  final Function(String) onChanged;

  const ForgotPasswordEmailTextField({
    super.key,
    this.initValue,
    this.errorText,
    this.autofillHints,
    this.onFieldSubmitted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextFormField(
          initialValue: initValue,
          textInputAction: TextInputAction.done,
          label: LocaleKeys.forgotPassword_yourEmail.tr(),
          hintText: LocaleKeys.forgotPassword_enterEmail.tr(),
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
