import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stopwatch/core/theme/theme_tailor.dart';

class StopwatchPainter extends CustomPainter {
  final StopwatchTheme theme;
  final Duration elapsedTime;

  StopwatchPainter({
    required this.theme,
    required this.elapsedTime,
  });
  @override
  void paint(Canvas canvas, Size size) {
    drawBackground(canvas, size);
    drawStopwatch(canvas, size);
    drawTimeMarkers(canvas, size);
    drawText(canvas, size, formatDuration(elapsedTime));
  }

  void drawBackground(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final gradient = LinearGradient(
      colors: [theme.accentGradientStartColor, theme.accentGradientEndColor],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    final paint = Paint()
      ..shader = gradient.createShader(
        Rect.fromCenter(center: center, height: size.height, width: size.width),
      );

    final outerCircle = Path()
      ..addOval(Rect.fromLTWH(0, 0, size.width, size.height));
    final innerCircle = Path()
      ..addOval(
        Rect.fromLTWH(0, size.height * 0.02, size.width, size.height * 0.98),
      );
    final ring = Path.combine(
      PathOperation.difference,
      outerCircle,
      innerCircle,
    );

    canvas.drawPath(ring, paint);
  }

  void drawStopwatch(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final stopwatchCenter = center - Offset(0, size.height * 0.005);
    final dropShadowCenter =
        stopwatchCenter.translate(-size.height * 0.01, size.height * 0.04);

    final stopwatchRadius = size.width / 2.4;
    final stopwatchSize = stopwatchRadius * 2;

    // Drop shadow
    final outerRadius = stopwatchRadius + size.height * 0.05;

    final shadowPath = Path()
      ..fillType = PathFillType.evenOdd
      ..addOval(Rect.fromCircle(center: dropShadowCenter, radius: outerRadius))
      ..addOval(
          Rect.fromCircle(center: stopwatchCenter, radius: stopwatchRadius));

    final gradient = RadialGradient(
      colors: [
        theme.shadowColor.withAlpha(50),
        theme.shadowColor.withAlpha(0),
      ],
      stops: [0.7, 1.0],
    );

    final shadowPaint = Paint()
      ..shader = gradient.createShader(
          Rect.fromCircle(center: dropShadowCenter, radius: outerRadius))
      ..style = PaintingStyle.fill;

    canvas.drawPath(shadowPath, shadowPaint);
    // Main circle with gradient border
    final strokeGradient = LinearGradient(
      colors: [theme.strokeColor, theme.strokeColor.withAlpha(0)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    final fillPaint = Paint()..color = theme.fillColor.withAlpha(120); //30%
    final strokePaint = Paint()
      ..shader = strokeGradient.createShader(
        Rect.fromCenter(
          center: stopwatchCenter,
          height: stopwatchSize,
          width: stopwatchSize,
        ),
      );

    final ring = Path()
      ..fillType = PathFillType.evenOdd
      ..addOval(
        Rect.fromCenter(
          center: stopwatchCenter,
          height: stopwatchSize,
          width: stopwatchSize,
        ),
      )
      ..addOval(
        Rect.fromCenter(
          center: stopwatchCenter,
          height: stopwatchSize * 0.98,
          width: stopwatchSize * 0.98,
        ),
      );
    canvas.drawPath(ring, strokePaint);
    canvas.drawCircle(stopwatchCenter, stopwatchRadius, fillPaint);

    // Inner shadow
    final innerShadowPaint = Paint()
      ..shader = RadialGradient(
        colors: [
          theme.shadowColor.withAlpha(0),
          theme.shadowColor.withAlpha(40),
        ],
        stops: [0.85, 1.0],
      ).createShader(Rect.fromCircle(center: center, radius: stopwatchRadius))
      ..style = PaintingStyle.fill;

    canvas.drawCircle(center, stopwatchRadius, innerShadowPaint);
  }

  void drawTimeMarkers(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final stopwatchRadius = size.width / 2.4;

    final markerPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1;

    final currentSecond = elapsedTime.inSeconds.remainder(60);
    for (int i = 0; i < 60; i++) {
      final angle = (i * (360 / 60)) * pi / 180;
      final pointsRadius = stopwatchRadius - size.height * 0.06;
      final pointOffset = Offset(
        center.dx + pointsRadius * cos(angle - pi / 2),
        center.dy + pointsRadius * sin(angle - pi / 2),
      );
      if (currentSecond == i) {
        canvas.drawCircle(pointOffset, 5, markerPaint);
      } else {
        canvas.drawCircle(pointOffset, 1, markerPaint);
      }
    }
  }

  void drawText(Canvas canvas, Size size, String text) {
    final center = Offset(size.width / 2, size.height / 2);
    final stopwatchCenter = center - Offset(0, size.height * 0.005);
    final scaledFontSize = 24 / 258 * size.width;

    final textSpan = TextSpan(
      text: text,
      style: theme.timeTextStyle.copyWith(fontSize: scaledFontSize),
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    )..layout();

    textPainter.paint(
      canvas,
      stopwatchCenter - Offset(textPainter.width / 2, textPainter.height / 2),
    );
  }

  String formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);

    return '${hours}h ${minutes}m ${seconds}s';
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
