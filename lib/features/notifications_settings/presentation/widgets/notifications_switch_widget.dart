import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:widgets_library/core/styles/colors.dart';
import 'package:widgets_library/core/widgets/ui_component/app_compact_switch_widget.dart';

class NotificationsSwitchWidget extends StatelessWidget {
  const NotificationsSwitchWidget(
      {super.key,
      required this.label,
      required this.text,
      required this.onChanged,
      this.initValue});

  final String label;
  final String text;
  final Function(bool? p0) onChanged;
  final bool? initValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: Clr.of(context).neutralGrey80,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: MainTextStyles.textBaseBoldStyle,
              ),
              Text(
                text,
                style: MainTextStyles.textDefaultStyle,
              )
            ],
          ),
          AppCompactSwitch(
            onChanged: onChanged,
            value: initValue,
          )
        ],
      ),
    );
  }
}
