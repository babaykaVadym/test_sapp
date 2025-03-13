part of 'onbording_models.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    String? fullName,
    String? sex,
    String? relationshipStatus,
    int? kids,
    int? techAffinity,
    String? birthDate,
    String? identifiesAs,
    String? joinedAt,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
