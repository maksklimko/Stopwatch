import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stopwatch/core/constants/app_colors.dart';
import 'package:stopwatch/core/theme/theme_tailor.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get dark =>
      ThemeData(scaffoldBackgroundColor: AppColors.codGray, extensions: [
        StopwatchTheme(
            accentGradientStartColor: AppColors.flamingo,
            accentGradientEndColor: AppColors.gamboge,
            shadowColor: AppColors.white,
            strokeColor: AppColors.white,
            fillColor: AppColors.white,
            timeTextStyle: GoogleFonts.lato(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: AppColors.springWood))
      ]);
}
