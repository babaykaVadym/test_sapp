import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:widgets_library/core/widgets/buttons/primary_button.dart';
import 'package:widgets_library/core/widgets/buttons/secondary_button.dart';
import 'package:widgets_library/core/widgets/ui_component/decorator_compact_dialog.dart';

class LogOutDialog extends StatefulWidget {
  final Function logOutTap;

  const LogOutDialog({
    super.key,
    required this.logOutTap,
  });

  @override
  State<StatefulWidget> createState() => LogOutDialogState();
}

class LogOutDialogState extends State<LogOutDialog> {
  @override
  Widget build(BuildContext context) {
    return CompactDialogDecorator(
      width: 312,
      height: 220,
      title: Text(
        LocaleKeys.logOut_exitTheApp.tr(),
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
            Text(LocaleKeys.logOut_exitTheAppText.tr(),
                style: MainTextStyles.textDefaultStyle,
                textAlign: TextAlign.start),
          ],
        ),
      ),
      actions: [
        SizedBox(
          width: 124,
          child: SecondaryButton(
            onTap: () {
              Navigator.pop(context);
            },
            title: LocaleKeys.logOut_noCancel.tr(),
          ),
        ),
        SizedBox(
          width: 124,
          child: PrimaryButton(
            onTap: () {
              widget.logOutTap();
              Navigator.pop(context);
            },
            title: LocaleKeys.logOut_yesGoOut.tr(),
          ),
        ),
      ],
    );
  }
}
