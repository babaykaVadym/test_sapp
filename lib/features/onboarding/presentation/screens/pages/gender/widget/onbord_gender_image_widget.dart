import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_svg/svg.dart';

class OnbordGenderImageWidget extends StatelessWidget {
  const OnbordGenderImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      SvgImages.onboardingGender,
      height: 159,
      width: 112,
    );
  }
}
