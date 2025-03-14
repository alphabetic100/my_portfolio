import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/src/core/utils/colors/app_colors.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.inter().fontFamily,
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.black,
  );
}
