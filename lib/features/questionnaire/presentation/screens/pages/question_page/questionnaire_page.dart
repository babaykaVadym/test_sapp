import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/system.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/utils/screen_utils.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_constrain_widget.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/cubit/questionnaire_cubit.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/screens/pages/question_page/cubit/question_page_cubit.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/screens/pages/question_page/widget/question_page_head_widget.dart';
import 'package:flutter_app_scarb/features/questionnaire/presentation/widgets/question_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionnairePage extends StatefulWidget {
  const QuestionnairePage({
    super.key,
    required this.sessionId,
  });

  final String sessionId;

  @override
  State<QuestionnairePage> createState() => _QuestionnairePageState();
}

class _QuestionnairePageState extends State<QuestionnairePage>
    with ScreenUtils {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuestionPageCubit, QuestionPageState>(
      builder: (context, state) {
        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) {
            if (state.currentQuestionIndex > 0) {
              context.read<QuestionPageCubit>().goToPrevStep();

              _pageController.previousPage(
                duration: const Duration(milliseconds: 260),
                curve: Curves.easeInOut,
              );
            } else {
              context.read<QuestionnaireCubit>().goToInitState();
            }
            return;
          },
          child: Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: BasicConstants.defaultHorizontalPadding,
                ),
                child: ContentConstrainWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      QuestionPageHeadWidget(
                        pageController: _pageController,
                      ),
                      Expanded(
                        child: PageView(
                          pageSnapping: false,
                          controller: _pageController,
                          physics: const NeverScrollableScrollPhysics(),
                          children: state.questions
                              .map((q) => QuestionView(
                                  question: q,
                                  onTap: (p0, index) async {
                                    late bool goToNextPage;

                                    if (q.answerId != null) {
                                      goToNextPage = await context
                                          .read<QuestionPageCubit>()
                                          .updateanswerToQuestion(
                                              questionId: q.id!,
                                              value: p0,
                                              indexAnswerButton: index,
                                              answerId: q.answerId!,
                                              sessionId: widget.sessionId);
                                    } else {
                                      goToNextPage = await context
                                          .read<QuestionPageCubit>()
                                          .answerToQuestion(
                                              questionId: q.id!,
                                              value: p0,
                                              indexAnswerButton: index,
                                              sessionId: widget.sessionId);
                                    }
                                    if (state.currentQuestionIndex ==
                                        state.questions.length - 1) {
                                      return;
                                    }

                                    if (goToNextPage) {
                                      _pageController.nextPage(
                                        duration:
                                            const Duration(milliseconds: 260),
                                        curve: Curves.easeInOut,
                                      );
                                    }
                                  }))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
      listener: (BuildContext context, QuestionPageState state) {
        if (state.error != null) {
          SystemHelper.showToast(
            e: state.error,
          );

          context.read<QuestionnaireCubit>().setError();
        }

        if (state.copmlete) {
          context.read<QuestionnaireCubit>().completeQuestionnaire(
                widget.sessionId,
              );
        }

        handleProgress(state.progressOn, context);
      },
    );
  }
}
