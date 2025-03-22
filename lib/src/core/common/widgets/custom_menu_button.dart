import 'package:flutter/material.dart';
import 'package:my_portfolio/src/core/utils/app_sizer/screen_sizer.dart';
import 'package:my_portfolio/src/core/utils/colors/app_colors.dart';

class CustomMenuButton extends StatelessWidget {
  const CustomMenuButton({
    super.key,
    required this.title,
    this.onTap,
    this.isSelected = false,
  });
  final String title;
  final Function()? onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: TextStyle(
            color: isSelected ? AppColors.textPirmary : AppColors.textSecondary,
            fontSize: ScreenSizer.isMobile ? ScreenSizer.width(4) : null),
      ),
    );
  }
}
