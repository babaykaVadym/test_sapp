import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_settings_entity.freezed.dart';

@freezed
class AccountSettingsEntity with _$AccountSettingsEntity {
  const factory AccountSettingsEntity({
    required String id,
    required String name,
    // Add your fields here
  }) = _AccountSettingsEntity;
}
