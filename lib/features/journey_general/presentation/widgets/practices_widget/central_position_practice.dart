import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/journey_general/presentation/widgets/rout_button_widget.dart';

class CentralPositionPractice extends StatelessWidget {
  const CentralPositionPractice({
    super.key,
    this.isCompleted = false,
    this.mainColor,
    required this.iconImage,
    required this.onTap,
  });

  final bool isCompleted;
  final Color? mainColor;
  final String iconImage;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoutButtonWidget(
          icon: iconImage,
          isCompleted: isCompleted,
          onTap: () => onTap(),
        ),
      ],
    );
  }
}
