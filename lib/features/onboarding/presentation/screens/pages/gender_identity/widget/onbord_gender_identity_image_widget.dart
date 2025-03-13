import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_svg/svg.dart';

class OnbordGenderIdentityImageWidget extends StatelessWidget {
  const OnbordGenderIdentityImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      SvgImages.onboardingIdentity,
      height: 216,
      width: 191,
    );
  }
}
