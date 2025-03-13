import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/ideas_settings/presentation/cubit/ideas_settings_cubit.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/widgets_library.dart';

class IdeaNoteWidget extends StatelessWidget {
  const IdeaNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IdeasSettingsCubit, IdeasSettingsState>(
      builder: (context, state) {
        return Column(
          children: [
            SizedBox(
              height: 132,
              child: AppTextFormField(
                maxLines: 5,
                initialValue: state.ideaText,
                showErrorBorder: state.showError,
                label: LocaleKeys.ideas_ideaText.tr(),
                hintText: LocaleKeys.ideas_writeYourOpinion.tr(),
                onChanged: (p0) {
                  context.read<IdeasSettingsCubit>().updateState(ideaText: p0);
                },
              ),
            ),
            if (state.showError)
              ErrorTextWidget(
                errorText: LocaleKeys.registration_thisFieldIsRequired.tr(),
              ),
          ],
        );
      },
    );
  }
}
