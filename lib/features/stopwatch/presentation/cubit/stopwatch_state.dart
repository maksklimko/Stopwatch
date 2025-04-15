import 'package:equatable/equatable.dart';

abstract class StopwatchState extends Equatable {}

class StopwatchInitial extends StopwatchState {
  @override
  List<Object?> get props => [];
}

class StopwatchRunning extends StopwatchState {
  final Duration elapsedTime;

  StopwatchRunning({required this.elapsedTime});

  @override
  List<Object?> get props => [elapsedTime];
}

class StopwatchPaused extends StopwatchState {
  @override
  List<Object?> get props => [];
}
