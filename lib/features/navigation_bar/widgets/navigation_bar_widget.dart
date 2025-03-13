import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/features/navigation_bar/consts/navigation_bar_buttons.dart';
import 'package:flutter_app_scarb/features/navigation_bar/cubit/navigation_bar_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:widgets_library/core/styles/colors.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBarCubit, NavigationBarState>(
      builder: (context, state) {
        return BottomNavigationBar(
          items: navigationButtons
              .mapIndexed(
                (index, e) => BottomNavigationBarItem(
                    icon: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: SvgPicture.asset(
                        e.iconPath,
                        height: 20,
                        width: 20,
                        colorFilter: ColorFilter.mode(
                            index == state.indexOfTapped
                                ? Clr.of(context).primaryBlue40
                                : Clr.of(context).neutralGrey40,
                            BlendMode.srcIn),
                      ),
                    ),
                    label: e.title),
              )
              .toList(),
          type: BottomNavigationBarType.fixed,
          currentIndex: state.indexOfTapped,
          unselectedLabelStyle: MainTextStyles.textNavigationStyle,
          selectedLabelStyle: MainTextStyles.textNavigationActiveStyle,
          selectedItemColor: Clr.of(context).primaryBlue40,
          onTap: (index) {
            context.read<NavigationBarCubit>().updateState(index);
          },
        );
      },
    );
  }
}
