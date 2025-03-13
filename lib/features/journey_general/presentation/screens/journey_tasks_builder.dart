import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/features/journey_general/presentation/cubit/journey_general_cubit.dart';
import 'package:flutter_app_scarb/features/journey_general/presentation/widgets/active_task_widget.dart';
import 'package:flutter_app_scarb/features/journey_general/presentation/widgets/task_no_journey_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JourneyTasksBuilder extends StatelessWidget {
  const JourneyTasksBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JourneyGeneralCubit, JourneyGeneralState>(
      builder: (context, state) {
        return Column(
          children: [
            for (int i = 0; i < state.activeTaskList.length; i++) ...[
              if (state.activeTaskList[i].type == null) ...[
                const TaskNoJourneyWidget()
              ] else ...[
                ActiveTaskWidget(
                  onSelect: (bool) {},
                ),
              ],
              spaceVer6,
            ]
          ],
        );
      },
    );
  }
}
