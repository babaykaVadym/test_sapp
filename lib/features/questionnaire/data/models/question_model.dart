part of 'questionnaire_model.dart';

@freezed
class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    String? id,
    String? questionId,
    int? value,
  }) = _AnsverModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}
