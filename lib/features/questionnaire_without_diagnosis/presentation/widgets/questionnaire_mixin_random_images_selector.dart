import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/features/questionnaire/data/models/questionnaire_model.dart';

mixin QuestionnaireRandomImagesSelectorMixin {
  static int _indexQuestion = 0;

  ImageForScreenModel get getQuestionImage {
    ImageForScreenModel image = questionImgs[_indexQuestion];
    _indexQuestion = (_indexQuestion + 1) % questionImgs.length;
    return image;
  }
}

List<ImageForScreenModel> questionImgs = [
  ImageForScreenModel(
    path: SvgImages.withoutDiagnosisQuestionnaireIc0,
  ),
  ImageForScreenModel(
    path: SvgImages.withoutDiagnosisQuestionnaireIc1,
    height: 156,
    width: 135.5,
  ),
  ImageForScreenModel(
    path: SvgImages.withoutDiagnosisQuestionnaireIc2,
  ),
  ImageForScreenModel(
    path: SvgImages.withoutDiagnosisQuestionnaireIc3,
    height: 118,
    width: 124,
  ),
  ImageForScreenModel(
    path: SvgImages.withoutDiagnosisQuestionnaireIc4,
  ),
  ImageForScreenModel(
    path: SvgImages.withoutDiagnosisQuestionnaireIc5,
    height: 126,
    width: 172,
  ),
  ImageForScreenModel(
    path: SvgImages.withoutDiagnosisQuestionnaireIc6,
  ),
  ImageForScreenModel(
    path: SvgImages.withoutDiagnosisQuestionnaireIc7,
    height: 146,
  ),
  ImageForScreenModel(
    path: SvgImages.withoutDiagnosisQuestionnaireIc8,
  ),
  ImageForScreenModel(
    path: SvgImages.withoutDiagnosisQuestionnaireIc9,
    height: 148,
    width: 164,
  ),
  ImageForScreenModel(
    path: SvgImages.withoutDiagnosisQuestionnaireIc10,
  ),
  ImageForScreenModel(
    path: SvgImages.withoutDiagnosisQuestionnaireIc11,
    height: 168,
    width: 152,
  ),
  ImageForScreenModel(
    path: SvgImages.withoutDiagnosisQuestionnaireIc11,
  ),
];
