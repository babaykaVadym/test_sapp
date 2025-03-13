import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_svg/svg.dart';
import 'package:widgets_library/core/widgets/buttons/button_svg_icon.dart';

class CheckRestoreHeaderWidget extends StatelessWidget {
  const CheckRestoreHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final contentTopPadding = MediaQuery.of(context).size.height * 0.1;
    return SizedBox(
      height: contentTopPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgIconButton(
            padding: 0,
            svgPicture: SvgPicture.asset(
              SvgImages.backIcon,
              height: 21,
              width: 21,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
