import 'package:flutter/material.dart';
import 'package:my_portfolio/src/core/utils/colors/app_colors.dart';

class ContactMePage extends StatelessWidget {
  const ContactMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Contact info page",
        style: TextStyle(color: AppColors.textPirmary),
      ),
    );
  }
}
