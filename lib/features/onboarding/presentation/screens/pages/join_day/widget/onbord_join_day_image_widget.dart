import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_svg/svg.dart';

class OnbordJoinDayImageWidget extends StatelessWidget {
  const OnbordJoinDayImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      SvgImages.questionnaireImage,
      height: 112,
      width: 112,
    );
  }
}
