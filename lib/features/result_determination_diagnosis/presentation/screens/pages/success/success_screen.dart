import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_library/core/widgets/buttons/primary_button.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
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
                SuccessBottomButtonSection(),
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
      "${LocaleKeys.resultDetermination_yourPathToRecoveryIsReady.tr()} ...",
      style: MainTextStyles.subtitle(context),
      textAlign: TextAlign.center,
    );
  }
}

class SuccessBottomButtonSection extends StatelessWidget {
  const SuccessBottomButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 12,
        left: BasicConstants.defaultHorizontalPadding,
        right: BasicConstants.defaultHorizontalPadding,
      ),
      child: PrimaryButton(
        title: LocaleKeys.resultDetermination_startBtn.tr(),
        onTap: () {
          context.go(Routes.homePath);
        },
      ),
    );
  }
}
