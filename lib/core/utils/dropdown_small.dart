import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:widgets_library/widgets_library.dart';

class SmallDropdown<T> extends StatefulWidget {
  final List<DropdownMenuItem<T>>? items;
  final void Function(T? value) onChanged;
  final T? value;
  final Color? fillColor;
  final Widget? prefix;
  final bool? isExpanded;
  final TextStyle? textStyle;
  final bool? showErrorBorder;
  final FocusNode? focusNode;
  final Widget? hintWidget;
  final bool useOnlyValue;
  final double? menuMaxHeight;
  final double? width;
  final void Function(GlobalKey)? onTap;
  final bool? readOnly;

  const SmallDropdown({
    super.key,
    this.value,
    required this.onChanged,
    required this.items,
    this.fillColor,
    this.focusNode,
    this.prefix,
    this.isExpanded,
    this.textStyle,
    this.showErrorBorder = false,
    this.hintWidget,
    this.useOnlyValue = false,
    this.onTap,
    this.readOnly,
    this.menuMaxHeight,
    this.width,
  }) : assert(!(prefix != null && isExpanded == true));

  @override
  State<SmallDropdown<T>> createState() => _SmallDropdownState<T>();
}

class _SmallDropdownState<T> extends State<SmallDropdown<T>> {
  dynamic _initValue;
  final trackDropdownState = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();
    _initValue = widget.value;
  }

  void _copyToClipboard(String text, BuildContext context) {
    Clipboard.setData(ClipboardData(text: text));
  }

  @override
  Widget build(BuildContext context) {
    Widget child = (widget.readOnly == null ||
            (widget.readOnly != null && !widget.readOnly!))
        ? DropdownButtonHideUnderline(
            key: trackDropdownState,
            child: DropdownButton<T>(
              dropdownColor: Colors.white,
              value: widget.useOnlyValue ? widget.value : _initValue,
              focusNode: widget.focusNode,
              isExpanded: widget.isExpanded ?? false,
              menuMaxHeight: widget.menuMaxHeight,
              onChanged: (v) {
                if (!(widget.readOnly ?? false)) {
                  setState(() {
                    _initValue = v;
                    widget.onChanged(v);
                  });
                }
              },
              onTap: () {
                if (widget.onTap != null) {
                  widget.onTap!(trackDropdownState);
                }
              },
              style: widget.textStyle ??
                  const TextStyle(
                    fontFamily: 'Avenir',
                    color: Color(0xff333333),
                    fontSize: 13,
                    fontWeight: FontWeight.w900,
                  ),
              icon: const Icon(Icons.arrow_drop_down, size: 28),
              items: widget.items,
              hint: widget.hintWidget,
              disabledHint: widget.hintWidget,
            ),
          )
        : AppTextFormField(
            controller: TextEditingController(
              text: widget.value == null ? ' ' : widget.value?.toString() ?? '',
            ),
            readOnly: true,
          );

    if (widget.prefix != null) {
      child = Row(
        children: [
          if (widget.prefix != null) widget.prefix!,
          if (widget.prefix != null) spaceHor4,
          child,
        ],
      );
    }

    child = InputDecorator(
      decoration: const InputDecoration(
        labelText: "Select an option",
        border: OutlineInputBorder(),
      ),
      expands: true,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 4),
        child: SizedBox(
          height: 56,
          width: widget.width,
          child: GestureDetector(
            child: child,
            onDoubleTap: () {
              _copyToClipboard(
                  widget.value == null ? ' ' : widget.value.toString(),
                  context);
            },
          ),
        ),
      ),
    );

    return widget.width != null
        ? SizedBox(width: widget.width, child: child)
        : child;
  }
}
