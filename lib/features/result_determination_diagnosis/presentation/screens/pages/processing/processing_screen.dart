import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProcessingScreen extends StatelessWidget {
  const ProcessingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: BasicConstants.defaultHorizontalPadding,
      ),
      child: Column(
        children: [
          ContentScrollBuilder(
            child: Column(
              children: [
                Spacer(),
                ProcessingIconWidget(),
                spaceVer16,
                ProcessingTitleWidget(),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProcessingIconWidget extends StatelessWidget {
  const ProcessingIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      SvgImages.resultDeterminationCharacterHands,
      height: 145,
      width: 145,
    );
  }
}

class ProcessingTitleWidget extends StatelessWidget {
  const ProcessingTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "${LocaleKeys.resultDetermination_preparingYourPathToTecovery.tr()} ...",
      style: MainTextStyles.subtitle(context),
      textAlign: TextAlign.center,
    );
  }
}
