import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Colors.white;
  static const Color backGroundColor = Color(0xFF2D2D2D);
  static const Color textPirmary = Colors.white;
  static Color textSecondary = Colors.grey.shade400;
  static const Color black = Colors.black;
  static Gradient menueGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      const Color(0x272727D4).withOpacity(0.83),
      const Color(0x272727D4).withOpacity(0.83),
    ],
  );
}
