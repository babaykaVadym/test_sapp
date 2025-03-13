import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_svg/svg.dart';
import 'package:widgets_library/widgets_library.dart';

class QuestionnaireStepHeader extends StatelessWidget {
  final int totalSteps;
  final int currentStep;
  final VoidCallback onBack;

  const QuestionnaireStepHeader({
    super.key,
    required this.totalSteps,
    required this.currentStep,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgIconButton(
          padding: 0,
          svgPicture: SvgPicture.asset(
            SvgImages.backIcon,
            height: 21,
            width: 21,
          ),
          onPressed: () {
            onBack();
          },
        ),
        spaceHor14,
        Expanded(
          child: LayoutBuilder(builder: (context, constrained) {
            final itemLeng = constrained.maxWidth / totalSteps;

            return SizedBox(
              height: 4,
              child: Row(
                children: [
                  Container(
                    width: itemLeng * currentStep,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Clr.of(context).primaryBlue40,
                    ),
                  ),
                  if (currentStep != totalSteps - 1) ...[
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 4),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Clr.of(context).neutralGrey90,
                        ),
                      ),
                    ),
                  ]
                ],
              ),
            );
          }),
        ),
      ],
    );
  }
}
