part of 'journey_general_model.dart';

@freezed
class JournayRoadModel with _$JournayRoadModel {
  const factory JournayRoadModel({
    String? id,
    String? type,
    @Default([]) List<CheckPointModel> checkPoints,
  }) = _JournayRoadModel;

  factory JournayRoadModel.fromJson(Map<String, dynamic> json) =>
      _$JournayRoadModelFromJson(json);
}

@freezed
class CheckPointModel with _$CheckPointModel {
  const factory CheckPointModel({
    String? id,
    String? type,
    @Default([]) List<PracticeModel> practices,
  }) = _CheckPointModel;

  factory CheckPointModel.fromJson(Map<String, dynamic> json) =>
      _$CheckPointModelFromJson(json);
}

@freezed
class PracticeModel with _$PracticeModel {
  const factory PracticeModel({
    String? id,
    @Default(false) bool isCompleted,
    String? type,
    String? image,
    String? additionalImage,
  }) = _PracticeModel;

  factory PracticeModel.fromJson(Map<String, dynamic> json) =>
      _$PracticeModelFromJson(json);
}
