import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_svg/svg.dart';

class OnbordTechAffinityImageWidget extends StatelessWidget {
  const OnbordTechAffinityImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      SvgImages.statsImage,
      height: 112,
      width: 112,
    );
  }
}
