part of 'journey_general_model.dart';

@freezed
class JourneyActiveTaskModel with _$JourneyActiveTaskModel {
  const factory JourneyActiveTaskModel({
    String? id,
    String? type,
    String? task,
    @Default(false) bool isCompleted,
  }) = _JourneyActiveTaskModel;

  factory JourneyActiveTaskModel.fromJson(Map<String, dynamic> json) =>
      _$JourneyActiveTaskModelFromJson(json);
}
