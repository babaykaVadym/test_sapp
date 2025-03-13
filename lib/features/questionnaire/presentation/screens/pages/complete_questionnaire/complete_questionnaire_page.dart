import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_constrain_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/cubit/questionnaire_cubit.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/screens/pages/complete_questionnaire/widget/complete_questionnaire_image_widget.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/screens/pages/complete_questionnaire/widget/complete_questionnaire_title_widget.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/widgets/button_section.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CompleteQuestionnairePage extends StatelessWidget {
  const CompleteQuestionnairePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionnaireCubit, QuestionnaireState>(
      builder: (context, state) {
        return PopScope(
          canPop: false,
          child: Scaffold(
            body: SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: BasicConstants.defaultHorizontalPadding,
              ),
              child: ContentConstrainWidget(
                child: Column(
                  children: [
                    const CompleteQuestionnaireTitleWidget(),
                    ContentScrollBuilder(
                      child: Column(
                        children: [
                          const Spacer(),
                          const CompleteQuestionnaireImageWidget(),
                          const Spacer(),
                          ButtonSection(
                            onTap: () {
                              context.go(Routes.resultDeterminationPath);
                            },
                            title: LocaleKeys.questionnaire_continueBtn.tr(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ),
        );
      },
    );
  }
}
