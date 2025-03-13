import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/features/navigation_bar/cubit/navigation_bar_cubit.dart';
import 'package:flutter_app_scarb/features/navigation_bar/widgets/navigation_app_bar.dart';
import 'package:flutter_app_scarb/features/navigation_bar/widgets/navigation_bar_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets_library/core/styles/colors.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBarCubit, NavigationBarState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
              child: Column(
            children: [
              const NavigationAppBar(),
              Divider(
                height: 1,
                color: Clr.of(context).neutralGrey60,
              ),
              spaceVer16,
              Expanded(child: state.listOfWidget[state.indexOfTapped]),
              Divider(
                height: 1,
                color: Clr.of(context).neutralGrey60,
              ),
            ],
          )),
          bottomNavigationBar: const NavigationBarWidget(),
        );
      },
    );
  }
}
