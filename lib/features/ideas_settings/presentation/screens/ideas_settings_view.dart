import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/features/ideas_settings/presentation/widgets/idea_note_widget.dart';
import 'package:flutter_app_scarb/features/ideas_settings/presentation/widgets/ideas_navigation_app_bar.dart';
import 'package:flutter_app_scarb/features/ideas_settings/presentation/widgets/ideas_save_btn_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:widgets_library/core/styles/colors.dart';

class IdeasSettingsView extends StatelessWidget {
  const IdeasSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const IdeasNavigationAppBar(),
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
              spacing: 16,
              children: [
                spaceVer16,
                IdeasTitleWidget(),
                IdeaNoteWidget(),
                Spacer(),
                IdeasSaveBtnWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class IdeasTitleWidget extends StatelessWidget {
  const IdeasTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          LocaleKeys.ideas_helpBecomeBetter.tr(),
          style: MainTextStyles.subtitle(context),
          textAlign: TextAlign.start,
        ),
        spaceVer18,
        Text(
          LocaleKeys.ideas_helpBecomeBetterText.tr(),
          style: MainTextStyles.title(context),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
