import 'package:flutter/material.dart';
import 'package:my_portfolio/src/core/utils/colors/app_colors.dart';

class WebProjectView extends StatelessWidget {
  const WebProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Project Page",
        style: TextStyle(color: AppColors.textPirmary),
      ),
    );
  }
}
