import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/user_name/widget/onbord_user_name_image_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/screens/pages/user_name/widget/onbord_user_name_title_widget.dart';
import 'package:flutter_app_scarb/features/onboarding/presentation/widgets/content_scroll_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/widgets_library.dart';

class OnbordUserNamePage extends StatelessWidget {
  const OnbordUserNamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OnbordUserNameTitleWidget(),
        InteractionFormWidget(),
      ],
    );
  }
}

class InteractionFormWidget extends StatefulWidget {
  const InteractionFormWidget({super.key});

  @override
  State<InteractionFormWidget> createState() => _InteractionFormWidgetState();
}

class _InteractionFormWidgetState extends State<InteractionFormWidget> {
  final GlobalKey<FormState> _form = GlobalKey();

  final _userNameEC = TextEditingController();
  bool userNameError = false;

  @override
  void dispose() {
    _userNameEC.dispose();
    super.dispose();
  }

  bool validate() {
    userNameError = _userNameEC.text.isEmpty;
    setState(() {});
    return userNameError;
  }

  _continueBtn() {
    if (validate()) {
      return;
    }
    context.read<OnboardingCubit>().upadeUserName(_userNameEC.text);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _form,
      child: ContentScrollBuilder(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Container(
              height: 162,
              alignment: AlignmentDirectional.center,
              child: Stack(
                children: [
                  const OnbordUserNameImageWidget(),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      height: 64,
                      child: AppTextFormField(
                        backgroundColor: Clr.of(context).neutralGrey100,
                        controller: _userNameEC,
                        label: LocaleKeys.onboarding_yourName.tr(),
                        showErrorBorder: userNameError,
                        hintText: LocaleKeys.onboarding_enterYourFullName.tr(),
                        onFieldSubmitted: (p) {
                          _continueBtn();
                        },
                        onChanged: (p) {
                          if (userNameError && p.isNotEmpty) {
                            setState(() {
                              userNameError = false;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              userNameError
                  ? LocaleKeys.onboarding_thisFieldIsRequired.tr()
                  : "",
              style: TextStyle(
                color: Clr.of(context).errorOrange40,
              ),
            ),
            const Spacer(),
            PrimaryButton(
              title: LocaleKeys.onboarding_continueBtn.tr(),
              onTap: _continueBtn,
            ),
          ],
        ),
      ),
    );
  }
}
