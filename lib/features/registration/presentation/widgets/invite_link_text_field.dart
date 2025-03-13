import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:widgets_library/widgets_library.dart';

class InviteLinkTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? errorText;
  final String? initialValue;
  final Function(String)? onFieldSubmitted;
  final Function(String) onChanged;

  const InviteLinkTextField({
    super.key,
    this.controller,
    this.errorText,
    this.onFieldSubmitted,
    this.initialValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextFormField(
          controller: controller,
          initialValue: initialValue,
          //  focusNode: focusNode,
          label: LocaleKeys.registration_inviteLink.tr(),
          hintText: LocaleKeys.registration_enterInviteLink.tr(),
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
