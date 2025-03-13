part of 'privacy_policy_models.dart';

@freezed
class HtmlParsModel with _$HtmlParsModel {
  const factory HtmlParsModel({
    String? title,
    String? name,
    @Default([]) List pathValue,
    @Default(false) bool isExpanded,
  }) = _HtmlParsModel;

  factory HtmlParsModel.fromJson(Map<String, dynamic> json) =>
      _$HtmlParsModelFromJson(json);
}
