import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_model.freezed.dart';
part 'forgot_password_model.g.dart';

@freezed
class ForgotPasswordModel with _$ForgotPasswordModel {
  const factory ForgotPasswordModel({
    bool? success,
    String? code,
  }) = _ForgotPasswordModel;

  factory ForgotPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordModelFromJson(json);
}
