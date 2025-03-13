import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_svg/svg.dart';

class OnbordChildrensImageWidget extends StatelessWidget {
  const OnbordChildrensImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      SvgImages.onboardingChildrens,
      height: 180,
      width: 192,
    );
  }
}
