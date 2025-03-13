// ignore_for_file: invalid_annotation_target

part of "questionnaire_without_diagnosis_model.dart";

@freezed
class InitialSurveyModel with _$InitialSurveyModel {
  const factory InitialSurveyModel({
    List<MentalStateModel>? mentalStates,
    List<QuestionModel>? questions,
    List<InterpretationRuleModel>? interpretationRules,
  }) = _InitialSurveyModel;

  factory InitialSurveyModel.fromJson(Map<String, dynamic> json) =>
      _$InitialSurveyModelFromJson(json);
}

@freezed
class InterpretationRuleModel with _$InterpretationRuleModel {
  const factory InterpretationRuleModel({
    String? mentalStateSlug,
    int? minScore,
    int? maxScore,
    String? level,
    String? description,
  }) = _InterpretationRuleModel;

  factory InterpretationRuleModel.fromJson(Map<String, dynamic> json) =>
      _$InterpretationRuleModelFromJson(json);
}

@freezed
class MentalStateModel with _$MentalStateModel {
  const factory MentalStateModel({
    String? title,
    String? slug,
    String? description,
  }) = _MentalStateModel;

  factory MentalStateModel.fromJson(Map<String, dynamic> json) =>
      _$MentalStateModelFromJson(json);
}

@freezed
class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    String? slug,
    String? content,
    String? mentalStateSlug,
    int? valueAnswerButton,
    int? scaleMin,
    int? scaleMax,
    @JsonKey(
      name: 'image',
      includeFromJson: false,
      includeToJson: false,
    )
    ImageForScreenModel? image,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}
