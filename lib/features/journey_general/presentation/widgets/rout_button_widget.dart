import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/features/journey_general/const/journey_const.dart';
import 'package:flutter_svg/svg.dart';
import 'package:widgets_library/core/styles/colors.dart';

class RoutButtonWidget extends StatelessWidget {
  const RoutButtonWidget(
      {super.key,
      this.width = defaultIconSize,
      this.heigh = defaultIconSize,
      required this.onTap,
      this.buttonColor,
      required this.icon,
      this.shadowColor,
      this.isCompleted = false});

  final double width;
  final double heigh;
  final VoidCallback onTap;
  final Color? buttonColor;
  final Color? shadowColor;
  final String icon;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: heigh,
        width: width,
        decoration: BoxDecoration(
          color: isCompleted
              ? buttonColor ?? Clr.of(context).primaryBlue40
              : Clr.of(context).neutralGrey60,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: isCompleted
                  ? shadowColor ?? Clr.of(context).primaryBlue20
                  : Clr.of(context).neutralGrey40,
              offset: const Offset(0, 5),
              blurRadius: 0,
              spreadRadius: 0,
            ),
          ],
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: [
            Positioned(
              top: width * 0.1,
              left: heigh * 0.1,
              child: SvgPicture.asset(
                SvgImages.btnVectorTop,
                colorFilter: ColorFilter.mode(
                  Clr.of(context).neutralGrey100.withAlpha((0.2 * 255).toInt()),
                  BlendMode.srcIn,
                ),
                width: width / 5.3,
                height: heigh / 5,
              ),
            ),
            Positioned(
              bottom: -5,
              left: heigh / 6,
              right: 0,
              top: width / 6,
              child: SvgPicture.asset(
                SvgImages.btnVectorBottom,
                colorFilter: ColorFilter.mode(
                  Clr.of(context).neutralGrey100.withAlpha((0.2 * 255).toInt()),
                  BlendMode.srcIn,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                isCompleted ? icon : SvgImages.journeyLockIcon,
                width: 32,
                height: 32,
              ),
            )
          ],
        ),
      ),
    );
  }
}
