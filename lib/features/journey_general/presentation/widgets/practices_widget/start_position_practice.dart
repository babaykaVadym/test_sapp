import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/journey_general/presentation/widgets/rout_button_widget.dart';
import 'package:flutter_svg/svg.dart';

class StartPositionPractice extends StatelessWidget {
  const StartPositionPractice(
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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RoutButtonWidget(
          icon: iconImage,
          onTap: onTap,
          isCompleted: isCompleted,
        ),
        if (additionalImage != null) ...[
          const Spacer(),
          SvgPicture.asset(additionalImage!),
        ],
      ],
    );
  }
}
