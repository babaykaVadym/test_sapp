import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/features/privacy_policy/presentation/cubit/privacy_policy_settings_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_library/core/widgets/buttons/button_svg_icon.dart';

class PrivacyPolicyNavigationAppBar extends StatelessWidget {
  const PrivacyPolicyNavigationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrivacyPolicySettingsCubit, PrivacyPolicySettingsState>(
      builder: (context, state) {
        return Container(
          height: 64,
          padding: const EdgeInsets.symmetric(
            horizontal: BasicConstants.defaultHorizontalPadding,
          ),
          child: Row(
            children: [
              SvgIconButton(
                padding: 0,
                svgPicture: SvgPicture.asset(
                  SvgImages.backIcon,
                  height: 21,
                  width: 21,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              spaceHor16,
              Text(
                LocaleKeys.accountSettings_privacyPolicy.tr(),
                style: MainTextStyles.textSubTitelStyle,
              ),
            ],
          ),
        );
      },
    );
  }
}
