import 'package:freezed_annotation/freezed_annotation.dart';

part 'ideas_settings_entity.freezed.dart';

@freezed
class IdeasSettingsEntity with _$IdeasSettingsEntity {
  const factory IdeasSettingsEntity({
    required String id,
    required String name,
    // Add your fields here
  }) = _IdeasSettingsEntity;
}
