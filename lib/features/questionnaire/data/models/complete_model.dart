part of 'questionnaire_model.dart';

@freezed
class CompleteModel with _$CompleteModel {
  const factory CompleteModel({
    String? id,
    String? surveyId,
    List<QuestionModel>? answers,
    String? mentalStateSnapshotIds,
  }) = _CompleteModel;

  factory CompleteModel.fromJson(Map<String, dynamic> json) =>
      _$CompleteModelFromJson(json);
}
