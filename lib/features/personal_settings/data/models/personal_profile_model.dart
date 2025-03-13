part of 'personal_settings_model.dart';

@freezed
class PersonalProfileModel with _$PersonalProfileModel {
  const factory PersonalProfileModel({
    String? sex,
    String? relationshipStatus,
    int? kids,
    int? techAffinity,
    String? birthDate,
    String? identifiesAs,
    String? joinedAt,
    String? fullName,
  }) = _PersonalProfileModel;

  factory PersonalProfileModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalProfileModelFromJson(json);
}
