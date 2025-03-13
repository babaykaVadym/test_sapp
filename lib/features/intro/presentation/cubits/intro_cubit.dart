import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repositories/intro_local_repository.dart';
import 'intro_state.dart';

class IntroCubit extends Cubit<IntroState> {
  final IntroLocalRepository localRepository;

  IntroCubit({
    required this.localRepository,
  }) : super(const IntroState());

  getIntroStatus() async {
    final result = await localRepository.getIntroStatus();

    emit(state.copyWith(
      introStatus: result ? IntroStatus.showed : IntroStatus.notShowed,
    ));
  }

  setIntroStatus(bool isShowed) async {
    await localRepository.setIntroStatus(isShowed);
    emit(state.copyWith(
      introStatus: isShowed ? IntroStatus.showed : IntroStatus.notShowed,
    ));
  }

  deleteIntroStatus() async {
    await localRepository.deleteIntroStatus();
    emit(state.copyWith(
      introStatus: IntroStatus.initial,
    ));
  }
}
