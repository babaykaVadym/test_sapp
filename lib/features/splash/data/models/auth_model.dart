part of 'splash_model.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    String? accessToken,
    String? refreshToken,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}
