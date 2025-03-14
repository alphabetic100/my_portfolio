import 'package:flutter/material.dart';
import 'package:my_portfolio/src/core/utils/colors/app_colors.dart';

class CustomMenuButton extends StatelessWidget {
  const CustomMenuButton({super.key, required this.title, this.onTap});
  final String title;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: TextStyle(
          color: AppColors.textSecondary,
        ),
      ),
    );
  }
}
