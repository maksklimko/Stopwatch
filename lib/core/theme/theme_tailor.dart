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

@tailorMixin
class ToggleButtonTheme extends ThemeExtension<ToggleButtonTheme>
    with _$ToggleButtonThemeTailorMixin {
  ToggleButtonTheme({
    required this.enabledColor,
    required this.disabledColor,
    required this.textStyle,
    required this.borderColor,
    required this.primaryShadowColor,
    required this.secondaryShadowColor,
  });
  @override
  final Color enabledColor;
  @override
  final Color disabledColor;
  @override
  final Color borderColor;
  @override
  final Color primaryShadowColor;
  @override
  final Color secondaryShadowColor;
  @override
  final TextStyle textStyle;
}
