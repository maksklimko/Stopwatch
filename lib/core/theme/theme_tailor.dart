import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';
import 'package:flutter/material.dart';

part 'theme_tailor.tailor.dart';

@tailorMixin
class StopwatchTheme extends ThemeExtension<StopwatchTheme>
    with _$StopwatchThemeTailorMixin {
  StopwatchTheme({
    required this.accentGradientStartColor,
    required this.accentGradientEndColor,
    required this.shadowColor,
    required this.strokeColor,
    required this.fillColor,
    required this.timeTextStyle,
  });
  @override
  final Color accentGradientStartColor;
  @override
  final Color accentGradientEndColor;
  @override
  final Color shadowColor;
  @override
  final Color strokeColor;
  @override
  final Color fillColor;
  @override
  final TextStyle timeTextStyle;
}
