import 'package:flutter/material.dart';
import 'package:widgets_library/widgets_library.dart';

import '../../../../core/style/consts/basic_constants.dart';

class ButtonSection extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const ButtonSection({super.key, required this.onTap, required this.title});

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
              title: title,
              onTap: onTap,
            ),
          ),
        ],
      ),
    );
  }
}
