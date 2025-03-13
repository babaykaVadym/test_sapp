part of 'result_determination_diagnosis_model.dart';

@freezed
class ResultItemModel with _$ResultItemModel {
  const factory ResultItemModel({
    String? id,
    String? type,
    String? description,
    @Default(0) int result,
    @Default(0) int scaleMax,
  }) = _ResultItemModel;

  factory ResultItemModel.fromJson(Map<String, dynamic> json) =>
      _$ResultItemModelFromJson(json);
}
