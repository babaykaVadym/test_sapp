// ignore_for_file: invalid_annotation_target

part of 'questionnaire_model.dart';

@freezed
class SurveySessionModel with _$SurveySessionModel {
  const factory SurveySessionModel({
    Survey? survey,
    Session? session,
  }) = _SurveySessionModel;

  factory SurveySessionModel.fromJson(Map<String, dynamic> json) =>
      _$SurveySessionModelFromJson(json);
}

@freezed
class Session with _$Session {
  const factory Session({
    String? id,
    String? surveyId,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}

@freezed
class Survey with _$Survey {
  const factory Survey({
    String? id,
    String? slug,
    List<Question>? questions,
  }) = _Survey;

  factory Survey.fromJson(Map<String, dynamic> json) => _$SurveyFromJson(json);
}

@freezed
class Question with _$Question {
  const factory Question({
    String? id,
    String? content,
    int? scaleAnswerMin,
    int? scaleAnswerMax,
    int? order,
    int? indexAnswerButton,
    String? answerId,
    @JsonKey(
      name: 'image',
      includeFromJson: false,
      includeToJson: false,
    )
    ImageForScreenModel? image,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
