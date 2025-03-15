import 'package:flutter/material.dart';
import 'package:my_portfolio/src/core/utils/colors/app_colors.dart';

class WebAboutPage extends StatelessWidget {
  const WebAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "About info page",
        style: TextStyle(color: AppColors.textPirmary),
      ),
    );
  }
}
