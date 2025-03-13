import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:widgets_library/widgets_library.dart';

import '../../../../core/translations/local_keys.g.dart';

class EmailTextField extends StatelessWidget {
  final String? initValue;
  final String? errorText;
  final String? autofillHints;
  final Function(String)? onFieldSubmitted;
  final Function(String) onChanged;

  const EmailTextField({
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
          textInputAction: TextInputAction.next,
          label: LocaleKeys.registration_yourEmail.tr(),
          hintText: LocaleKeys.registration_enterEmail.tr(),
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
