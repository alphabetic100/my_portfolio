import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/src/app/features/splash_screen/controller/splash_controller.dart';
import 'package:my_portfolio/src/core/utils/colors/app_colors.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final SplashController splashController = Get.find<SplashController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _splashBody(),
    );
  }

  Widget _splashBody() {
    return Center(
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            'alphabetic100',
            textStyle: const TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              color: AppColors.textPirmary,
            ),
          ),
        ],
        repeatForever: true,
      ),
    );
  }
}
