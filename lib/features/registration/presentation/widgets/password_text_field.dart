import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:widgets_library/widgets_library.dart';

import '../../../../core/helper/images.dart';

class PasswordTextField extends StatefulWidget {
  final String? initValue;
  final String label;
  final String hintText;
  final String? errorText;
  final String? autofillHints;
  final Function(String)? onFieldSubmitted;
  final Function(String) onChanged;

  const PasswordTextField({
    super.key,
    this.initValue,
    required this.label,
    required this.hintText,
    required this.onChanged,
    this.errorText,
    this.autofillHints,
    this.onFieldSubmitted,
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  void _toggleObscure() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextFormField(
          initialValue: widget.initValue,
          hintText: widget.hintText,
          //   focusNode: widget.focusNode,
          label: widget.label,
          textInputAction: TextInputAction.next,
          autofillHints: widget.autofillHints,
          showErrorBorder: widget.errorText != null,
          onFieldSubmitted: (p0) => widget.onFieldSubmitted != null
              ? widget.onFieldSubmitted!(p0)
              : null,
          onChanged: (p0) => widget.onChanged(p0),
          suffixIcon: ExcludeFocus(
            child: IconButton(
              splashColor: Colors.transparent,
              icon: SvgPicture.asset(
                _obscureText ? SvgImages.visibility : SvgImages.visibilityOff,
                colorFilter: ColorFilter.mode(
                  Clr.of(context).neutralGrey40,
                  BlendMode.srcIn,
                ),
              ),
              onPressed: () {
                _toggleObscure();
              },
            ),
          ),
          obscureText: _obscureText,
        ),
        ErrorTextWidget(
          errorText: widget.errorText,
        ),
      ],
    );
  }
}
