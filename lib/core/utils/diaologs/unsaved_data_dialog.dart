import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:widgets_library/core/widgets/buttons/primary_button.dart';
import 'package:widgets_library/core/widgets/buttons/secondary_button.dart';
import 'package:widgets_library/core/widgets/ui_component/decorator_compact_dialog.dart';

class UnsavedDataDialog extends StatefulWidget {
  final Function saveBtn;
  final Function continueBtn;
  final String label;
  const UnsavedDataDialog(
      {super.key,
      required this.saveBtn,
      required this.continueBtn,
      required this.label});

  @override
  State<StatefulWidget> createState() => UnsavedDataDialogState();
}

class UnsavedDataDialogState extends State<UnsavedDataDialog> {
  @override
  Widget build(BuildContext context) {
    return CompactDialogDecorator(
      width: 312,
      height: 220,
      title: Text(
        widget.label,
        style: MainTextStyles.textBaseBoldStyle,
      ),
      content: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(LocaleKeys.unsavedData_saveException.tr(),
                style: MainTextStyles.textDefaultStyle,
                textAlign: TextAlign.center),
          ],
        ),
      ),
      actions: [
        SizedBox(
          width: 120,
          child: SecondaryButton(
            onTap: () {
              widget.continueBtn();
              Navigator.pop(context);
            },
            title: LocaleKeys.unsavedData_continueBtn.tr(),
          ),
        ),
        SizedBox(
          width: 120,
          child: PrimaryButton(
            onTap: () {
              widget.saveBtn();
              Navigator.pop(context);
            },
            title: LocaleKeys.unsavedData_saveBtn.tr(),
          ),
        ),
      ],
    );
  }
}
