import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_settings_entity.freezed.dart';

@freezed
class NotificationsSettingsEntity with _$NotificationsSettingsEntity {
  const factory NotificationsSettingsEntity({
    required String id,
    required String name,
    // Add your fields here
  }) = _NotificationsSettingsEntity;
}
