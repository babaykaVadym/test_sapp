import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:widgets_library/widgets_library.dart';

class QuestionDiagnosisPageButtonsList extends StatefulWidget {
  final Function(
    int,
  ) onTap;

  final int scaleAnswerMin;
  final int scaleAnswerMax;
  final int? index;

  const QuestionDiagnosisPageButtonsList(
      {super.key,
      required this.onTap,
      required this.scaleAnswerMin,
      required this.scaleAnswerMax,
      this.index});

  @override
  State<QuestionDiagnosisPageButtonsList> createState() =>
      _QuestionDiagnosisPageButtonsListState();
}

class _QuestionDiagnosisPageButtonsListState
    extends State<QuestionDiagnosisPageButtonsList> {
  final List<String> _defaultFourAnswer = [
    LocaleKeys.questionnaireInit_absolutelyNotBtn.tr(),
    LocaleKeys.questionnaireInit_fewDaysBtn.tr(),
    LocaleKeys.questionnaireInit_moreThanHalfDaysBtn.tr(),
    LocaleKeys.questionnaireInit_almostEveryDayBtn.tr(),
  ];

  final List<String> _defaultMoreAnswer = [
    LocaleKeys.questionnaireInit_absolutelyNotBtn.tr(),
    LocaleKeys.questionnaireInit_veryRareBtn.tr(),
    LocaleKeys.questionnaireInit_rarelyBtn.tr(),
    LocaleKeys.questionnaireInit_sometimesBtn.tr(),
    LocaleKeys.questionnaireInit_oftenBtn.tr(),
    LocaleKeys.questionnaireInit_veryOften.tr(),
    LocaleKeys.questionnaireInit_almostEveryDayBtn.tr(),
  ];

  List<String> answerList = [];

  @override
  void initState() {
    super.initState();

    if (widget.scaleAnswerMax < 4) {
      answerList = _defaultFourAnswer;
    } else {
      answerList = _defaultMoreAnswer;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = widget.scaleAnswerMin;
            i <= (widget.scaleAnswerMax > 6 ? 6 : widget.scaleAnswerMax);
            i++) ...[
          spaceVer16,
          ChoiceButton(
            isSelected: widget.index == i,
            title: answerList[i],
            onTap: () {
              widget.onTap(
                i,
              );
            },
          ),
        ]
      ],
    );
  }
}
