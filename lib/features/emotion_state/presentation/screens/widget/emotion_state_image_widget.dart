import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_svg/svg.dart';

class EmotionStateImageWidget extends StatelessWidget {
  const EmotionStateImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      SvgImages.skyEmotionState,
      width: 204,
      height: 145,
    );
  }
}
