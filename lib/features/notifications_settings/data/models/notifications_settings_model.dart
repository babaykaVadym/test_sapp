import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_settings_model.freezed.dart';
part 'notifications_settings_model.g.dart';

@freezed
class NotificationsSettingsModel with _$NotificationsSettingsModel {
  const factory NotificationsSettingsModel({
    required String id,
    required String name,
    // Add your fields here
  }) = _NotificationsSettingsModel;

  factory NotificationsSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationsSettingsModelFromJson(json);
}
