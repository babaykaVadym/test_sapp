import 'package:equatable/equatable.dart';

enum IntroStatus {
  initial,
  showed,
  notShowed,
}

class IntroState extends Equatable {
  final IntroStatus introStatus;

  const IntroState({this.introStatus = IntroStatus.initial});

  IntroState copyWith({
    IntroStatus? introStatus,
  }) {
    return IntroState(introStatus: introStatus ?? this.introStatus);
  }

  @override
  List<Object?> get props => [introStatus];
}
