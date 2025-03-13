import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_svg/svg.dart';

class OnbordUserNameImageWidget extends StatelessWidget {
  const OnbordUserNameImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 16,
      bottom: 30,
      child: SvgPicture.asset(
        SvgImages.onboardingHello,
        height: 154,
        width: 108,
      ),
    );
  }
}
