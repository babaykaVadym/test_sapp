import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_model.freezed.dart';
part 'error_model.g.dart';

class ErrorResponseModel {
  ErrorResponseModel({
    this.error,
  });

  ErrorModel? error;

  factory ErrorResponseModel.fromJson(Map<String, dynamic> json) {
    return ErrorResponseModel(
      error: json["error"] == null ? null : ErrorModel.fromJson(json["error"]),
    );
  }
}

@freezed
class ErrorModel with _$ErrorModel {
  const factory ErrorModel({
    String? message,
    String? code,
    String? stack,
  }) = _ErrorModel;

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);
}
