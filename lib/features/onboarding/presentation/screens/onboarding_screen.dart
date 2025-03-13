import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/helper/system.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/utils/screen_utils.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/birh_date/onbord_birh_date_page.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/childrens/onbord_childrens_page.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/gender/onbord_gender_page.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/gender_identity/onbord_gender_identity_page.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/join_day/onbord_join_day_page.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/marital_status/onbord_marital_status_page.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/tech_affinity/onbord_tech_affinity_page.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/user_name/onbord_user_name_page.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/widgets/page_step_indicator.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_constrain_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:widgets_library/widgets_library.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> with ScreenUtils {
  final PageController _pageController = PageController();

  final List<Widget> onboardingPages = [
    const OnbordUserNamePage(),
    const OnbordJoinDayPage(),
    const OnbordGenderPage(),
    const OnbordGenderIdentityPage(),
    const OnbordBirhDatePage(),
    const OnbordMaritalStatusPage(),
    const OnbordChildrensPage(),
    const OnbordTechAffinityPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final contentTopPadding = MediaQuery.of(context).size.height * 0.1;
    return Scaffold(
      backgroundColor: Clr.of(context).neutralGrey100,
      body: SafeArea(
        child: BlocProvider(
          create: (context) => OnboardingCubit(),
          child: BlocConsumer<OnboardingCubit, OnboardingState>(
            listener: (context, state) {
              if (state.error != null) {
                SystemHelper.showToast(
                  e: state.error,
                );

                context.read<OnboardingCubit>().setError();
              }

              handleProgress(state.progressOn, context);

              if (state.jumpToPage != null) {
                _pageController.animateToPage(
                  state.jumpToPage!,
                  duration: const Duration(milliseconds: 260),
                  curve: Curves.easeInOut,
                );

                context.read<OnboardingCubit>().jumpToPageOnboarding();
              }
            },
            builder: (context, state) {
              return ContentConstrainWidget(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: contentTopPadding,
                        child: Row(
                          children: [
                            if (state.pageIdnex != 0) ...[
                              SvgIconButton(
                                padding: 0,
                                svgPicture: SvgPicture.asset(
                                  SvgImages.backIcon,
                                  height: 21,
                                  width: 21,
                                ),
                                onPressed: () {
                                  context
                                      .read<OnboardingCubit>()
                                      .jumpToPageOnboarding(
                                        page: state.pageIdnex - 1,
                                      );
                                },
                              ),
                              spaceHor14,
                            ] else
                              const SizedBox(
                                height: 21,
                              ),
                            const Expanded(
                              child: PageStepIndicator(),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: PageView(
                          pageSnapping: false,
                          controller: _pageController,
                          physics: const NeverScrollableScrollPhysics(),
                          children: onboardingPages,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
