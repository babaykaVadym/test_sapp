part of 'questionnaire_model.dart';

@freezed
class ImageForScreenModel with _$ImageForScreenModel {
  const factory ImageForScreenModel({
    required String path,
    @Default(112) double width,
    @Default(112) double height,
  }) = _ImageForScreenModel;
}
