import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/features/ideas_settings/presentation/cubit/ideas_settings_cubit.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/core/widgets/buttons/primary_button.dart';

class IdeasSaveBtnWidget extends StatelessWidget {
  const IdeasSaveBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IdeasSettingsCubit, IdeasSettingsState>(
      builder: (context, state) {
        return PrimaryButton(
          title: LocaleKeys.ideas_saveBtn.tr(),
          onTap: () {
            context.read<IdeasSettingsCubit>().sendIdea();
          },
        );
      },
    );
  }
}
