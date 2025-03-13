import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:widgets_library/widgets_library.dart';

import '../../../../core/style/consts/basic_constants.dart';

class BottomButtonSection extends StatelessWidget {
  final VoidCallback onTap;

  const BottomButtonSection({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Clr.of(context).neutralGrey100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 26,
              left: BasicConstants.defaultHorizontalPadding,
              right: BasicConstants.defaultHorizontalPadding,
            ),
            child: PrimaryButton(
              title: LocaleKeys.registration_continueBtn.tr(),
              onTap: onTap,
            ),
          ),
        ],
      ),
    );
  }
}
