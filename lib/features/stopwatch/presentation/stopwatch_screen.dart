import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stopwatch/core/widgets/app_toggle_button.dart';
import 'package:stopwatch/features/stopwatch/presentation/cubit/stopwatch_cubit.dart';
import 'package:stopwatch/features/stopwatch/presentation/widgets/stopwatch_widget/stopwatch_widget.dart';

@RoutePage()
class StopwatchScreen extends StatelessWidget {
  const StopwatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            StopwatchWidget(),
            Spacer(),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 400),
              child: AppToggleButton(
                enabledText: 'start',
                disabledText: 'stop',
                onChanged: (isEnabled) {
                  if (isEnabled) {
                    context.read<StopwatchCubit>().pause();
                  } else {
                    context.read<StopwatchCubit>().start();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
