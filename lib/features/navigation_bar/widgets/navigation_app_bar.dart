import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/features/navigation_bar/consts/navigation_bar_buttons.dart';
import 'package:flutter_app_scarb/features/navigation_bar/cubit/navigation_bar_cubit.dart';
import 'package:flutter_app_scarb/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:widgets_library/core/widgets/buttons/button_svg_icon.dart';

class NavigationAppBar extends StatelessWidget {
  const NavigationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBarCubit, NavigationBarState>(
      builder: (context, state) {
        return Container(
          height: 64,
          padding: const EdgeInsets.symmetric(
            horizontal: BasicConstants.defaultHorizontalPadding,
          ),
          child: Row(
            children: [
              Text(
                navigationButtons[state.indexOfTapped].title,
                style: MainTextStyles.textSubTitelStyle,
              ),
              const Spacer(),
              SvgIconButton(
                  onPressed: () {
                    sl<SharedPreferences>().clear();
                  },
                  svgPicture: const Icon(Icons.notifications_outlined))
            ],
          ),
        );
      },
    );
  }
}
