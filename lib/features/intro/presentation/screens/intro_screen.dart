import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/intro/presentation/cubits/intro_cubit.dart';
import 'package:flutter_app_scarb/features/intro/presentation/cubits/intro_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helper/images.dart';
import '../../../../core/style/text_styles/basic_text_styles.dart';
import '../../../../injection_container.dart';
import '../../consts/intro_steps.dart';
import '../widgets/custom_linear_progress_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with SingleTickerProviderStateMixin {
  final IntroCubit _introCubit = sl<IntroCubit>();

  late final AnimationController _controller;
  late final Animation<double> _animation;

  double onboardingImageSize = 145.0;
  int currentStepIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          goToNextStep();
        }
      });

    Future.delayed(
      const Duration(seconds: 5),
      () => _controller.forward(),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<IntroCubit, IntroState>(
      bloc: _introCubit,
      listener: (context, state) {
        if (state.introStatus == IntroStatus.showed) {
          context.go('/');
        }
      },
      child: GestureDetector(
        onTap: skipCurrentStep,
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                children: [
                  Row(
                    spacing: 4,
                    children: onboardingSteps.map(
                      (step) {
                        final stepIndex = onboardingSteps.indexOf(step);
                        return Expanded(
                          child: SizedBox(
                            height: 4,
                            child: CustomLinearProgressIndicator(
                              stepIndex: stepIndex,
                              currentStepIndex: currentStepIndex,
                              animation: _animation,
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            SvgImages.onboardingCharacter,
                            width: onboardingImageSize,
                            height: onboardingImageSize,
                          ),
                          const SizedBox(height: 32),
                          Text(
                            onboardingSteps[currentStepIndex].title,
                            style: MainTextStyles.subtitle(context),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            onboardingSteps[currentStepIndex].subtitle,
                            style: MainTextStyles.title(context),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void goToNextStep() {
    if (currentStepIndex < onboardingSteps.length - 1) {
      setState(() {
        currentStepIndex++;
      });
      _controller.reset();
      _controller.forward();
    } else {
      _introCubit.setIntroStatus(true);
    }
  }

  void skipCurrentStep() {
    _controller.stop();
    goToNextStep();
  }
}
