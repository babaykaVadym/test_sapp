import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/widgets/message_buuble.dart';
import 'package:flutter_svg/svg.dart';

class CompleteQuestionnaireImageWidget extends StatelessWidget {
  const CompleteQuestionnaireImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 244,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            width: 380,
            height: 110,
            child: SpeechBubble(
              title: LocaleKeys.questionnaire_youAreNotAlone.tr(),
              text: LocaleKeys.questionnaire_yourColleaguesFaceSuch.tr(),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SvgPicture.asset(
              SvgImages.questionnairePersIcon,
              width: 112,
              height: 112,
            ),
          ),
        ],
      ),
    );
  }
}
