import 'package:freezed_annotation/freezed_annotation.dart';

part 'ideas_settings_model.freezed.dart';
part 'ideas_settings_model.g.dart';

@freezed
class IdeasSettingsModel with _$IdeasSettingsModel {
  const factory IdeasSettingsModel({
    required String id,
    required String name,
    // Add your fields here
  }) = _IdeasSettingsModel;

  factory IdeasSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$IdeasSettingsModelFromJson(json);
}
