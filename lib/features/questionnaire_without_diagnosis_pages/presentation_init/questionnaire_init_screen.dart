import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/helper/system.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/utils/screen_utils.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/features/questionnaire_without_diagnosis/presentation/cubit/questionnaire_without_diagnosis_cubit.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_library/core/widgets/buttons/primary_button.dart';

class QuestionnaireInitScreen extends StatelessWidget with ScreenUtils {
  const QuestionnaireInitScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: BasicConstants.defaultHorizontalPadding,
          ),
          child: BlocConsumer<QuestionnaireWithoutDiagnosisCubit,
              QuestionnaireWithoutDiagnosisState>(
            listener: (context, state) {
              if (state.error != null) {
                SystemHelper.showToast(
                  e: state.error,
                );

                context.read<QuestionnaireWithoutDiagnosisCubit>().setError();
              }

              handleProgress(state.progressOn, context);
            },
            builder: (context, state) {
              return const Column(
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
              );
            },
          ),
        ),
      ),
    );
  }
}

class ProcessingIconWidget extends StatelessWidget {
  const ProcessingIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      SvgImages.onboardingCharacter,
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
    return Column(
      children: [
        Text(
          LocaleKeys.questionnaireInit_thinkAboutYourFeelings.tr(),
          style: MainTextStyles.subtitle(context),
          textAlign: TextAlign.center,
        ),
        spaceVer18,
        Text(
          LocaleKeys.questionnaireInit_chooseHowOftenText.tr(),
          style: MainTextStyles.title(context),
          textAlign: TextAlign.center,
        ),
        spaceVer8,
        Text(
          LocaleKeys.questionnaireInit_beHonestText.tr(),
          style: MainTextStyles.title(context),
          textAlign: TextAlign.center,
        ),
        spaceVer8,
        Text(
          LocaleKeys.questionnaireInit_areYouReadyText.tr(),
          style: MainTextStyles.title(context),
          textAlign: TextAlign.center,
        ),
      ],
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
        title: LocaleKeys.questionnaireInit_startBtn.tr(),
        onTap: () async {
          final res = await context
              .read<QuestionnaireWithoutDiagnosisCubit>()
              .initSurvey();
          if (res) {
            context.push(Routes.questionnaireInitPath +
                Routes.questionnaireWithoutDiagnosisPath);
          }
        },
      ),
    );
  }
}
