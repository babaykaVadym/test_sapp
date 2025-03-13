import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:widgets_library/core/styles/colors.dart';
import 'package:widgets_library/core/widgets/ui_component/decorator_compact_dialog.dart';

class DeleteProfileDialog extends StatelessWidget {
  const DeleteProfileDialog({super.key, required this.onDelete});

  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return CompactDialogDecorator(
      height: 220,
      width: 312,
      title: Text(
        LocaleKeys.deleteProfile_deleteProfile.tr(),
        style: MainTextStyles.textSubTitelBoldStyle,
      ),
      actions: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Text(
            LocaleKeys.deleteProfile_noCancel.tr(),
            style: MainTextStyles.textBaseStyle,
          ),
        ),
        spaceHor12,
        GestureDetector(
          onTap: () {
            onDelete();
            Navigator.pop(context);
          },
          child: Text(
            LocaleKeys.deleteProfile_yesDelete.tr(),
            style: MainTextStyles.textBaseStyle.copyWith(
              color: Clr.of(context).primaryBlue40,
            ),
          ),
        ),
      ],
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.deleteProfile_areYouSureYouWantDeleteProfile.tr(),
              style: MainTextStyles.textBaseStyle,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
