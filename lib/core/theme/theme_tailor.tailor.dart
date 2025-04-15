// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_tailor.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$StopwatchThemeTailorMixin on ThemeExtension<StopwatchTheme> {
  Color get accentGradientStartColor;
  Color get accentGradientEndColor;
  Color get shadowColor;
  Color get strokeColor;
  Color get fillColor;
  TextStyle get timeTextStyle;

  @override
  StopwatchTheme copyWith({
    Color? accentGradientStartColor,
    Color? accentGradientEndColor,
    Color? shadowColor,
    Color? strokeColor,
    Color? fillColor,
    TextStyle? timeTextStyle,
  }) {
    return StopwatchTheme(
      accentGradientStartColor:
          accentGradientStartColor ?? this.accentGradientStartColor,
      accentGradientEndColor:
          accentGradientEndColor ?? this.accentGradientEndColor,
      shadowColor: shadowColor ?? this.shadowColor,
      strokeColor: strokeColor ?? this.strokeColor,
      fillColor: fillColor ?? this.fillColor,
      timeTextStyle: timeTextStyle ?? this.timeTextStyle,
    );
  }

  @override
  StopwatchTheme lerp(
      covariant ThemeExtension<StopwatchTheme>? other, double t) {
    if (other is! StopwatchTheme) return this as StopwatchTheme;
    return StopwatchTheme(
      accentGradientStartColor: Color.lerp(
          accentGradientStartColor, other.accentGradientStartColor, t)!,
      accentGradientEndColor:
          Color.lerp(accentGradientEndColor, other.accentGradientEndColor, t)!,
      shadowColor: Color.lerp(shadowColor, other.shadowColor, t)!,
      strokeColor: Color.lerp(strokeColor, other.strokeColor, t)!,
      fillColor: Color.lerp(fillColor, other.fillColor, t)!,
      timeTextStyle: TextStyle.lerp(timeTextStyle, other.timeTextStyle, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StopwatchTheme &&
            const DeepCollectionEquality().equals(
                accentGradientStartColor, other.accentGradientStartColor) &&
            const DeepCollectionEquality()
                .equals(accentGradientEndColor, other.accentGradientEndColor) &&
            const DeepCollectionEquality()
                .equals(shadowColor, other.shadowColor) &&
            const DeepCollectionEquality()
                .equals(strokeColor, other.strokeColor) &&
            const DeepCollectionEquality().equals(fillColor, other.fillColor) &&
            const DeepCollectionEquality()
                .equals(timeTextStyle, other.timeTextStyle));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(accentGradientStartColor),
      const DeepCollectionEquality().hash(accentGradientEndColor),
      const DeepCollectionEquality().hash(shadowColor),
      const DeepCollectionEquality().hash(strokeColor),
      const DeepCollectionEquality().hash(fillColor),
      const DeepCollectionEquality().hash(timeTextStyle),
    );
  }
}

extension StopwatchThemeBuildContextProps on BuildContext {
  StopwatchTheme get stopwatchTheme =>
      Theme.of(this).extension<StopwatchTheme>()!;
  Color get accentGradientStartColor => stopwatchTheme.accentGradientStartColor;
  Color get accentGradientEndColor => stopwatchTheme.accentGradientEndColor;
  Color get shadowColor => stopwatchTheme.shadowColor;
  Color get strokeColor => stopwatchTheme.strokeColor;
  Color get fillColor => stopwatchTheme.fillColor;
  TextStyle get timeTextStyle => stopwatchTheme.timeTextStyle;
}

mixin _$ToggleButtonThemeTailorMixin on ThemeExtension<ToggleButtonTheme> {
  Color get enabledColor;
  Color get disabledColor;
  Color get borderColor;
  Color get primaryShadowColor;
  Color get secondaryShadowColor;
  TextStyle get textStyle;

  @override
  ToggleButtonTheme copyWith({
    Color? enabledColor,
    Color? disabledColor,
    Color? borderColor,
    Color? primaryShadowColor,
    Color? secondaryShadowColor,
    TextStyle? textStyle,
  }) {
    return ToggleButtonTheme(
      enabledColor: enabledColor ?? this.enabledColor,
      disabledColor: disabledColor ?? this.disabledColor,
      borderColor: borderColor ?? this.borderColor,
      primaryShadowColor: primaryShadowColor ?? this.primaryShadowColor,
      secondaryShadowColor: secondaryShadowColor ?? this.secondaryShadowColor,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  ToggleButtonTheme lerp(
      covariant ThemeExtension<ToggleButtonTheme>? other, double t) {
    if (other is! ToggleButtonTheme) return this as ToggleButtonTheme;
    return ToggleButtonTheme(
      enabledColor: Color.lerp(enabledColor, other.enabledColor, t)!,
      disabledColor: Color.lerp(disabledColor, other.disabledColor, t)!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
      primaryShadowColor:
          Color.lerp(primaryShadowColor, other.primaryShadowColor, t)!,
      secondaryShadowColor:
          Color.lerp(secondaryShadowColor, other.secondaryShadowColor, t)!,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ToggleButtonTheme &&
            const DeepCollectionEquality()
                .equals(enabledColor, other.enabledColor) &&
            const DeepCollectionEquality()
                .equals(disabledColor, other.disabledColor) &&
            const DeepCollectionEquality()
                .equals(borderColor, other.borderColor) &&
            const DeepCollectionEquality()
                .equals(primaryShadowColor, other.primaryShadowColor) &&
            const DeepCollectionEquality()
                .equals(secondaryShadowColor, other.secondaryShadowColor) &&
            const DeepCollectionEquality().equals(textStyle, other.textStyle));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(enabledColor),
      const DeepCollectionEquality().hash(disabledColor),
      const DeepCollectionEquality().hash(borderColor),
      const DeepCollectionEquality().hash(primaryShadowColor),
      const DeepCollectionEquality().hash(secondaryShadowColor),
      const DeepCollectionEquality().hash(textStyle),
    );
  }
}

extension ToggleButtonThemeBuildContextProps on BuildContext {
  ToggleButtonTheme get toggleButtonTheme =>
      Theme.of(this).extension<ToggleButtonTheme>()!;
  Color get enabledColor => toggleButtonTheme.enabledColor;
  Color get disabledColor => toggleButtonTheme.disabledColor;
  Color get borderColor => toggleButtonTheme.borderColor;
  Color get primaryShadowColor => toggleButtonTheme.primaryShadowColor;
  Color get secondaryShadowColor => toggleButtonTheme.secondaryShadowColor;
  TextStyle get textStyle => toggleButtonTheme.textStyle;
}
