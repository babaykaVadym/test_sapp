import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/features/journey_general/presentation/cubit/journey_general_cubit.dart';
import 'package:flutter_app_scarb/features/journey_general/presentation/screens/journey_practices_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JourneyCheckPointsBuilder extends StatelessWidget {
  const JourneyCheckPointsBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JourneyGeneralCubit, JourneyGeneralState>(
      builder: (context, state) {
        return Column(
          children: [
            for (int i = 0; i < state.checkPoints.length; i++) ...[
              JourneyPracticesBuilder(
                checkPointIndex: i + 1,
                checkPointModel: state.checkPoints[i],
              ),
              spaceVer6,
            ]
          ],
        );
      },
    );
  }
}
