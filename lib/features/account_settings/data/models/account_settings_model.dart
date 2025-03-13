import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_settings_model.freezed.dart';
part 'account_settings_model.g.dart';

@freezed
class AccountSettingsModel with _$AccountSettingsModel {
  const factory AccountSettingsModel({
    required String id,
    required String name,
    // Add your fields here
  }) = _AccountSettingsModel;

  factory AccountSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$AccountSettingsModelFromJson(json);
}
