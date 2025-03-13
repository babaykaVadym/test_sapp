import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/journey_general/presentation/widgets/rout_button_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EndPositionPractice extends StatelessWidget {
  const EndPositionPractice(
      {super.key,
      required this.isCompleted,
      this.mainColor,
      required this.iconImage,
      this.additionalImage,
      required this.onTap});
  final bool isCompleted;
  final Color? mainColor;
  final String iconImage;
  final String? additionalImage;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (additionalImage != null) ...[
          SvgPicture.asset(additionalImage!),
          const Spacer(),
        ],
        RoutButtonWidget(
          icon: iconImage,
          isCompleted: isCompleted,
          onTap: onTap,
        ),
      ],
    );
  }
}
