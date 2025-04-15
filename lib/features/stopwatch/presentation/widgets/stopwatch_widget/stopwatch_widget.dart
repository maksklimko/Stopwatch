import 'package:flutter/material.dart';
import 'package:stopwatch/core/theme/theme_tailor.dart';
import 'package:stopwatch/features/stopwatch/presentation/widgets/stopwatch_widget/stopwatch_painter.dart';

class StopwatchWidget extends StatelessWidget {
  const StopwatchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
        aspectRatio: 1,
        child: CustomPaint(
          painter: StopwatchPainter(
              theme: context.stopwatchTheme,
              elapsedTime: Duration(minutes: 2, seconds: 3)),
        ),
      ),
    );
  }
}
