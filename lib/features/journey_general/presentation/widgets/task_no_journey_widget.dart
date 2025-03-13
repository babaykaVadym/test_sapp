import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/style/consts/button_constants.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_library/core/styles/colors.dart';

class TaskNoJourneyWidget extends StatelessWidget {
  const TaskNoJourneyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(Routes.startQuestionnairePath);
      },
      child: Container(
        height: 80.6,
        decoration: BoxDecoration(
            color: Clr.of(context).primaryBlue40,
            border: Border(
              top: BorderSide(
                color: Clr.of(context).primaryBlue20,
                width: ButtonConstants.unselectedBorderWidth,
              ),
              right: BorderSide(
                color: Clr.of(context).primaryBlue20,
                width: ButtonConstants.unselectedBorderWidth,
              ),
              bottom: BorderSide(
                color: Clr.of(context).primaryBlue20,
                width: ButtonConstants.bottomUnselectedBorderWidth,
              ),
              left: BorderSide(
                color: Clr.of(context).primaryBlue20,
                width: ButtonConstants.unselectedBorderWidth,
              ),
            ),
            borderRadius: BorderRadius.circular(14)),
        child: Stack(
          children: [
            Positioned(
                top: 0,
                bottom: 0,
                right: 80,
                child: SvgPicture.asset(
                  SvgImages.roadImageIcon,
                )),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        LocaleKeys
                            .journeyGeneral_takeSurveyToAssessYourCondition
                            .tr(),
                        style: MainTextStyles.textDefaultStyle.copyWith(
                          color: Clr.of(context).neutralGrey100,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Clr.of(context).neutralGrey100,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
