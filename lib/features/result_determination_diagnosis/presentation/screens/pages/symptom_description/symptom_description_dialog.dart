import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:widgets_library/core/styles/colors.dart';
import 'package:widgets_library/core/widgets/buttons/button_svg_icon.dart';
import 'package:widgets_library/core/widgets/ui_component/decorator_compact_dialog.dart';

class SymptomDescriptionDialog extends StatelessWidget {
  const SymptomDescriptionDialog(
      {super.key, required this.title, required this.description});
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return CompactDialogDecorator(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      content: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            BasicConstants.defaultHorizontalPadding,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SvgIconButton(
                    svgPicture: const Icon(Icons.close),
                    padding: 0,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
              ContentScrollBuilder(
                child: Column(
                  children: [
                    const Spacer(),
                    const SymptomIconWidget(),
                    spaceVer16,
                    SymptomTitleWidget(
                      title: title,
                    ),
                    spaceVer16,
                    const WhatIsItBtnWidget(),
                    spaceVer16,
                    SymptomDescriptionWidget(
                      description: description,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SymptomIconWidget extends StatelessWidget {
  const SymptomIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      SvgImages.resultDeterminationCharacter,
      height: 145,
      width: 145,
    );
  }
}

class SymptomTitleWidget extends StatelessWidget {
  const SymptomTitleWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: MainTextStyles.subtitle(context),
      textAlign: TextAlign.center,
    );
  }
}

class SymptomDescriptionWidget extends StatelessWidget {
  const SymptomDescriptionWidget({super.key, required this.description});
  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: MainTextStyles.textDefaultStyle,
      textAlign: TextAlign.center,
    );
  }
}

class WhatIsItBtnWidget extends StatelessWidget {
  const WhatIsItBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.resultDetermination_whatIsIt.tr(),
      style: MainTextStyles.textDefaultBoldStyle.copyWith(
        color: Clr.of(context).primaryBlue40,
      ),
    );
  }
}
