import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_settings_model.freezed.dart';
part 'profile_settings_model.g.dart';

@freezed
class ProfileSettingsModel with _$ProfileSettingsModel {
  const factory ProfileSettingsModel({
    String? fullName,
    // ignore: invalid_annotation_target
    @JsonKey(
      includeToJson: false,
    )
    String? email,
  }) = _ProfileSettingsModel;

  factory ProfileSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileSettingsModelFromJson(json);
}
