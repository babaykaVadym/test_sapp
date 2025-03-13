part of 'questionnaire_without_diagnosis_cubit.dart';

@freezed
class QuestionnaireWithoutDiagnosisState
    with _$QuestionnaireWithoutDiagnosisState {
  const factory QuestionnaireWithoutDiagnosisState.initial({
    @Default(false) bool progressOn,
    @Default(false) bool showProcessing,
    @Default(false) bool showResultPage,
    Object? error,
    @Default([]) List<QuestionModel> questions,
    @Default([]) List<MentalStateModel> mentalStates,
    @Default([]) List<InterpretationRuleModel> interpretationRules,
    @Default([]) List<QuestionnaireDiagnosisResultModel> results,
    @Default(0) int currentQuestionIndex,
  }) = _Initial;
}
