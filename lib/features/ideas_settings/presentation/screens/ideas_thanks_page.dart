import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_library/core/styles/colors.dart';
import 'package:widgets_library/core/widgets/buttons/button_svg_icon.dart';

class IdeasThanksPage extends StatelessWidget {
  const IdeasThanksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 64,
          padding: const EdgeInsets.symmetric(
            horizontal: BasicConstants.defaultHorizontalPadding,
          ),
          child: Row(
            children: [
              SvgIconButton(
                padding: 0,
                svgPicture: SvgPicture.asset(
                  SvgImages.closeIcon,
                  height: 22,
                  width: 22,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
          color: Clr.of(context).neutralGrey60,
        ),
        const ContentScrollBuilder(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: BasicConstants.defaultHorizontalPadding,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CharacterIconWidget(),
                spaceVer16,
                IdeasThankTitleWidget(),
                spaceVer32,
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CharacterIconWidget extends StatelessWidget {
  const CharacterIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      SvgImages.onboardingCharacter,
      height: 145,
      width: 145,
    );
  }
}

class IdeasThankTitleWidget extends StatelessWidget {
  const IdeasThankTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          LocaleKeys.thanks_thankYouForFeedback.tr(),
          style: MainTextStyles.subtitle(context),
          textAlign: TextAlign.center,
        ),
        spaceVer18,
        Text(
          LocaleKeys.thanks_thanksText.tr(),
          style: MainTextStyles.title(context),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
