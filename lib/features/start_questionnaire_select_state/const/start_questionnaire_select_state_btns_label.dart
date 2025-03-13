import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';

List<StartQuestionnaireBtnsModel> startQuestionnaireBtns = [
  StartQuestionnaireBtnsModel(
    label: LocaleKeys.startQuestionnaireSelectState_anxietyBtn.tr(),
    value: 'anxiety',
  ),
  StartQuestionnaireBtnsModel(
    label: LocaleKeys.startQuestionnaireSelectState_depressionBtn.tr(),
    value: 'depression',
  ),
  StartQuestionnaireBtnsModel(
    label: LocaleKeys.startQuestionnaireSelectState_professionalBurnout.tr(),
    value: 'burnout',
  ),
];

class StartQuestionnaireBtnsModel {
  final String label;
  final String value;

  StartQuestionnaireBtnsModel({required this.label, required this.value});
}
