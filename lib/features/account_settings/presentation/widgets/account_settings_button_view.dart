import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_svg/svg.dart';
import 'package:widgets_library/core/consts/button_constants.dart';
import 'package:widgets_library/core/styles/colors.dart';

class AccountSettingsButtonView extends StatelessWidget {
  const AccountSettingsButtonView(
      {super.key,
      required this.label,
      required this.iconPath,
      required this.onTap});
  final String label;
  final String iconPath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Clr.of(context).neutralGrey70,
            width: ButtonConstants.unselectedBorderWidth,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
            ),
            spaceHor16,
            Text(
              label,
              style: MainTextStyles.textBaseStyle,
            ),
            const Spacer(),
            Icon(
              Icons.arrow_right,
              color: Clr.of(context).primaryBlue40,
            )
          ],
        ),
      ),
    );
  }
}
