import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stopwatch/features/stopwatch/presentation/cubit/stopwatch_state.dart';

class StopwatchCubit extends Cubit<StopwatchState> {
  Timer? _timer;

  StopwatchCubit() : super(StopwatchInitial());

  void onTick(Timer timer) {
    if (state is StopwatchRunning) {
      emit(
        StopwatchRunning(
          elapsedTime: (state as StopwatchRunning).elapsedTime +
              const Duration(seconds: 1),
        ),
      );
    }
  }

  Future<void> start() async {
    if (_timer?.isActive ?? false) return;
    emit(StopwatchRunning(elapsedTime: Duration.zero));
    _timer = Timer.periodic(const Duration(seconds: 1), onTick);
  }

  void pause() {
    _timer?.cancel();
    emit(StopwatchPaused());
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
