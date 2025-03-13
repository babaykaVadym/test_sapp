import 'package:flutter/material.dart';
import 'package:widgets_library/core/styles/colors.dart';

class AppDropdownWidget<T> extends StatelessWidget {
  const AppDropdownWidget({
    super.key,
    this.showError = false,
    this.hintText,
    this.labelText,
    this.items,
    required this.onChanged,
    this.value,
  });

  final bool showError;
  final String? hintText;
  final T? value;
  final String? labelText;
  final List<DropdownMenuItem<T>>? items;
  final void Function(T? value) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: DropdownButtonFormField<T>(
        value: value,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color:
                  showError
                      ? Clr.of(context).errorOrange40
                      : Clr.of(context).neutralGrey80,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color:
                  showError
                      ? Clr.of(context).errorOrange40
                      : Clr.of(context).neutralGrey80,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color:
                  showError
                      ? Clr.of(context).errorOrange40
                      : Clr.of(context).neutralGrey80,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color:
                  showError
                      ? Clr.of(context).errorOrange40
                      : Clr.of(context).neutralGrey80,
            ),
          ),
        ),
        items: items,
        onChanged: (T? newValue) => onChanged(newValue),
      ),
    );
  }
}
