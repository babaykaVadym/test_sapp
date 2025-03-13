part of 'questionnaire_without_diagnosis_model.dart';

@freezed
class QuestionnaireDiagnosisResultModel
    with _$QuestionnaireDiagnosisResultModel {
  const factory QuestionnaireDiagnosisResultModel({
    String? title,
    String? slug,
    String? rulsDescription,
    String? mentalDescription,
    String? level,
    @Default(0) int maxValue,
    @Default(0) int minValue,
    @Default(0) int chosenValue,
  }) = _QuestionnaireDiagnosisResultModel;

  factory QuestionnaireDiagnosisResultModel.fromJson(
          Map<String, dynamic> json) =>
      _$QuestionnaireDiagnosisResultModelFromJson(json);
}
