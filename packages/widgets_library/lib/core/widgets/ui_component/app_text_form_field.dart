import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widgets_library/core/styles/color_themes.dart';
import 'package:widgets_library/core/styles/text_styles.dart';

class TextFormFieldOutlined extends TextFormField {
  TextFormFieldOutlined({
    super.key,
    String? hintText,
    String? label,
    Widget? suffixIcon,
    super.obscureText,
    super.controller,
    super.validator,
    List<TextInputFormatter> super.inputFormatters = const [],
    super.keyboardType,
    super.maxLines,
    String? helperText,
    String? errorText,
    bool showErrorBorder = false,
    super.initialValue,
    super.onChanged,
    super.onFieldSubmitted,
    Color? backgroundColor,
    Color? textColor,
    super.readOnly,
    super.maxLength,
    super.textInputAction,
    EdgeInsetsGeometry? contentPadding,
    TextAlign? textAlign,
    Function()? super.onTap,
    String? autofillHints,
    super.focusNode,
  }) : super(
         //key: key,
         decoration: InputDecoration(
           label: label == null ? null : Text(label),
           floatingLabelBehavior: FloatingLabelBehavior.always,
           enabledBorder: OutlineInputBorder(
             borderSide: BorderSide(
               color:
                   showErrorBorder
                       ? DarkTheme.errorOrange40
                       : DarkTheme.neutralGrey80,
             ),
           ),
           focusedBorder: OutlineInputBorder(
             borderSide: BorderSide(
               color:
                   showErrorBorder
                       ? DarkTheme.errorOrange40
                       : DarkTheme.neutralGrey80,
             ),
           ),
           hintText: hintText,

           suffixIcon: suffixIcon,
           helperText: helperText,
           filled: backgroundColor != null,
           fillColor: backgroundColor,
           contentPadding: contentPadding,
           counterText: '',
         ),

         autofillHints: autofillHints != null ? [autofillHints] : [],
         style: fixelDisplay.s16.h15.w500.copyWith(
           color: textColor ?? DarkTheme.neutralGrey0,
         ),

         textAlign: textAlign ?? TextAlign.start,
       );
}

class AppTextFormField extends StatefulWidget {
  //@override
  //final Key? key;
  final String? hintText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final int? maxLines;
  final String? helperText;
  final bool? showErrorBorder;
  final String? initialValue;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final Color? backgroundColor;
  final Color? textColor;
  final bool? readOnly;
  final int? maxLength;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final bool useInitValue;
  final String? label;
  final String? errorText;
  final String? autofillHints;
  final Function()? onTap;

  final double height;
  final TextAlign? textAlign;

  const AppTextFormField({
    super.key,
    this.hintText,
    this.onTap,
    this.errorText,
    this.suffixIcon,
    this.label,
    this.textColor,
    this.textInputAction,
    this.obscureText,
    this.focusNode,
    this.controller,
    this.validator,
    this.inputFormatters,
    this.keyboardType,
    this.maxLines,
    this.helperText,
    this.showErrorBorder,
    this.initialValue,
    this.onChanged,
    this.onFieldSubmitted,
    this.backgroundColor,
    this.readOnly,
    this.maxLength,
    this.height = 64,
    this.textAlign,
    this.useInitValue = false,
    this.autofillHints,
  });

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  void _copyToClipboard(String text, BuildContext context) {
    Clipboard.setData(ClipboardData(text: text));
  }

  TextEditingController? initValue;

  @override
  void initState() {
    if (widget.useInitValue) {
      initValue = TextEditingController(text: widget.initialValue);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant AppTextFormField oldWidget) {
    if (widget.useInitValue && initValue?.text != widget.initialValue) {
      initValue?.text = widget.initialValue ?? '';

      setState(() {});
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: GestureDetector(
        onDoubleTap: () {
          _copyToClipboard(
            widget.controller?.text ?? widget.initialValue ?? '',
            context,
          );
        },
        child: TextFormFieldOutlined(
          key: widget.key,
          hintText: widget.hintText,
          label: widget.label,
          onTap: widget.onTap,
          suffixIcon: widget.suffixIcon,
          obscureText: widget.obscureText ?? false,
          controller: initValue ?? widget.controller,
          validator: widget.validator,
          inputFormatters: widget.inputFormatters ?? const [],
          keyboardType: widget.keyboardType,
          maxLines: widget.maxLines ?? 1,
          textColor: widget.textColor,
          autofillHints: widget.autofillHints,
          helperText: widget.helperText,
          showErrorBorder: widget.showErrorBorder ?? false,
          initialValue: widget.useInitValue ? null : widget.initialValue,
          onChanged: widget.onChanged,
          onFieldSubmitted: widget.onFieldSubmitted,
          backgroundColor: widget.backgroundColor,
          textInputAction: widget.textInputAction,
          readOnly: widget.readOnly ?? false,
          maxLength: widget.maxLength,
          errorText: widget.errorText,
          textAlign: widget.textAlign,
        ),
      ),
    );
  }
}
