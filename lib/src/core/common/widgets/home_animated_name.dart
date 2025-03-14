import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/src/app/features/home/controller/home_screen_controller.dart';
import 'package:my_portfolio/src/core/utils/app_sizer/screen_sizer.dart';
import 'package:my_portfolio/src/core/utils/colors/app_colors.dart';

class HomeAnimatedName extends StatelessWidget {
  HomeAnimatedName({super.key});
  final HomeScreenController homeScreenController =
      Get.find<HomeScreenController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => homeScreenController.nameAnimation.value
          ? AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'alphabetic100',
                  textStyle: TextStyle(
                    fontSize: ScreenSizer.width(6),
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPirmary,
                  ),
                ),
              ],
            )
          : AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'MD. NAZMUL HASAN',
                  textStyle: TextStyle(
                    fontSize: ScreenSizer.width(6),
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPirmary,
                  ),
                ),
              ],
            ),
    );
  }
}
