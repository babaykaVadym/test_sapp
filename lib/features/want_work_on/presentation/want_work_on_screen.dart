import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/presentation/cubit/questionnaire_without_diagnosis_cubit.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_library/core/widgets/buttons/primary_button.dart';
import 'package:widgets_library/core/widgets/buttons/secondary_button.dart';

class WantWorkOnScreen extends StatelessWidget {
  const WantWorkOnScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionnaireWithoutDiagnosisCubit,
        QuestionnaireWithoutDiagnosisState>(
      builder: (context, state) {
        return const PopScope(
          canPop: false,
          child: Scaffold(
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: BasicConstants.defaultHorizontalPadding,
                ),
                child: Column(
                  children: [
                    ContentScrollBuilder(
                      child: Column(
                        children: [
                          Spacer(),
                          WorkImageWidget(),
                          spaceVer18,
                          WorkOnTitleWidget(),
                          Spacer(),
                          WotkOnBottomNavigationButton(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class WorkImageWidget extends StatelessWidget {
  const WorkImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      SvgImages.onboardingCharacter,
      height: 145,
      width: 145,
    );
  }
}

class WorkOnTitleWidget extends StatelessWidget {
  const WorkOnTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        Text(
          LocaleKeys.wantWorkOn_defineWhatYouWantWorkOn.tr(),
          style: MainTextStyles.subtitle(context),
          textAlign: TextAlign.center,
        ),
        Text(
          LocaleKeys.wantWorkOn_chooseConditionThatConcernsYouText.tr(),
          style: MainTextStyles.title(context),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class WotkOnBottomNavigationButton extends StatelessWidget {
  const WotkOnBottomNavigationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      spacing: 8,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SecondaryButton(
            title: LocaleKeys.wantWorkOn_maybeLaterBtn.tr(),
            onTap: () async {},
          ),
        ),
        Expanded(
          child: PrimaryButton(
            title: LocaleKeys.wantWorkOn_startBtn.tr(),
            onTap: () async {
              context.push(Routes.startQuestionnairePath);
            },
          ),
        ),
      ],
    );
  }
}
