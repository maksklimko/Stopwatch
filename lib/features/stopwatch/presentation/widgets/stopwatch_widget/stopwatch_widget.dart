import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stopwatch/core/theme/theme_tailor.dart';
import 'package:stopwatch/features/stopwatch/presentation/cubit/stopwatch_cubit.dart';
import 'package:stopwatch/features/stopwatch/presentation/cubit/stopwatch_state.dart';
import 'package:stopwatch/features/stopwatch/presentation/widgets/stopwatch_widget/stopwatch_painter.dart';

class StopwatchWidget extends StatelessWidget {
  const StopwatchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 350),
        child: AspectRatio(
          aspectRatio: 1,
          child: BlocBuilder<StopwatchCubit, StopwatchState>(
            builder: (context, state) {
              return CustomPaint(
                painter: StopwatchPainter(
                  theme: context.stopwatchTheme,
                  elapsedTime: state is StopwatchRunning
                      ? state.elapsedTime
                      : Duration.zero,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
