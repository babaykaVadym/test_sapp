import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_password_model.freezed.dart';
part 'new_password_model.g.dart';

@freezed
class NewPasswordModel with _$NewPasswordModel {
  const factory NewPasswordModel({
    bool? success,
    String? code,
  }) = _NewPasswordModel;

  factory NewPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$NewPasswordModelFromJson(json);
}
