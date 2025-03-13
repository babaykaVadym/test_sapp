import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_model.freezed.dart';
part 'sign_in_model.g.dart';

@freezed
class SignInModel with _$SignInModel {
  const factory SignInModel({
    String? accessToken,
    String? refreshToken,
  }) = _SignInModel;

  factory SignInModel.fromJson(Map<String, dynamic> json) =>
      _$SignInModelFromJson(json);
}
