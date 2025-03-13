import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:widgets_library/widgets_library.dart';

class QuestionPageButtonsList extends StatefulWidget {
  final Function(int, int) onTap;

  final int scaleAnswerMin;
  final int scaleAnswerMax;
  final int? index;

  const QuestionPageButtonsList(
      {super.key,
      required this.onTap,
      required this.scaleAnswerMin,
      required this.scaleAnswerMax,
      this.index});

  @override
  State<QuestionPageButtonsList> createState() =>
      _QuestionPageButtonsListState();
}

class _QuestionPageButtonsListState extends State<QuestionPageButtonsList> {
  final List<String> _defaultFourAnswer = [
    LocaleKeys.questionnaire_neverBtn.tr(),
    LocaleKeys.questionnaire_fewDaysBtn.tr(),
    LocaleKeys.questionnaire_moreThanHaltTimeBtn.tr(),
    LocaleKeys.questionnaire_almostEveryDayBtn.tr(),
  ];

  final List<String> _defaultMoreAnswer = [
    LocaleKeys.questionnaire_neverBtn.tr(),
    LocaleKeys.questionnaire_veryRareBtn.tr(),
    LocaleKeys.questionnaire_rarelyBtn.tr(),
    LocaleKeys.questionnaire_sometimesBtn.tr(),
    LocaleKeys.questionnaire_oftenBtn.tr(),
    LocaleKeys.questionnaire_veryOften.tr(),
    LocaleKeys.questionnaire_almostEveryDayBtn.tr(),
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
            title: "$i - ${answerList[i]}",
            onTap: () {
              widget.onTap(i, i);
            },
          ),
        ]
      ],
    );
  }
}
