import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/features/start_questionnaire_select_state/const/start_questionnaire_select_state_btns_label.dart';
import 'package:flutter_app_scarb/router.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_library/core/widgets/buttons/choice_button.dart';
import 'package:widgets_library/core/widgets/buttons/primary_button.dart';

class StateButtonListBuilder extends StatefulWidget {
  const StateButtonListBuilder({super.key});

  @override
  State<StateButtonListBuilder> createState() => _StateButtonListBuilderState();
}

class _StateButtonListBuilderState extends State<StateButtonListBuilder> {
  int? selectedSlug;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < startQuestionnaireBtns.length; i++) ...[
          ChoiceButton(
            title: startQuestionnaireBtns[i].label,
            isSelected: selectedSlug == i,
            onTap: () async {
              setState(() {
                selectedSlug = i;
              });
            },
          ),
          spaceVer12,
        ],
        PrimaryButton(
          title: LocaleKeys.startQuestionnaireSelectState_confirmBtn.tr(),
          isActive: selectedSlug != null,
          onTap: () async {
            if (selectedSlug != null) {
              context.push(Routes.questionnairePath,
                  extra: startQuestionnaireBtns[selectedSlug!].value);
            }
          },
        ),
        spaceVer12,
      ],
    );
  }
}
