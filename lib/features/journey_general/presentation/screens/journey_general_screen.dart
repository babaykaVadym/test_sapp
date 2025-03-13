import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/basic_constants.dart';
import 'package:flutter_app_scarb/features/journey_general/presentation/screens/journey_check_points_builder.dart';
import 'package:flutter_app_scarb/features/journey_general/presentation/screens/journey_tasks_builder.dart';
import 'package:flutter_app_scarb/features/journey_general/presentation/widgets/mixin_random_images_selector.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/system.dart';
import '../../../../core/utils/screen_utils.dart';
import '../cubit/journey_general_cubit.dart';

class JourneyGeneralScreen extends StatefulWidget {
  const JourneyGeneralScreen({super.key});

  @override
  State<JourneyGeneralScreen> createState() => _JourneyGeneralScreenState();
}

class _JourneyGeneralScreenState extends State<JourneyGeneralScreen>
    with ScreenUtils, RandomImagesSelectorMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => JourneyGeneralCubit()..getData(),
        child: BlocConsumer<JourneyGeneralCubit, JourneyGeneralState>(
          builder: (context, state) {
            return const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: BasicConstants.defaultHorizontalPadding,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    JourneyTasksBuilder(),
                    JourneyCheckPointsBuilder(),
                  ],
                ),
              ),
            );
          },
          listener: (BuildContext context, state) {
            if (state.error != null) {
              SystemHelper.showToast(
                e: state.error,
              );

              context.read<JourneyGeneralCubit>().setError();
            }

            handleProgress(state.progressOn, context);
          },
        ),
      ),
    );
  }
}
