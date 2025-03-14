import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/src/app/features/home/controller/home_screen_controller.dart';
import 'package:my_portfolio/src/app/features/home/web_view/presentation/widget/download_resume_button.dart';
import 'package:my_portfolio/src/core/common/widgets/app_spacers.dart';
import 'package:my_portfolio/src/core/common/widgets/custom_menu_button.dart';
import 'package:my_portfolio/src/core/utils/app_sizer/screen_sizer.dart';
import 'package:my_portfolio/src/core/utils/colors/app_colors.dart';

class WebHomePage extends StatelessWidget {
  WebHomePage({super.key});
  final HomeScreenController homeScreenController =
      Get.find<HomeScreenController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: [
              VerticalSpace(height: ScreenSizer.paddingSmall),
              Container(
                width: ScreenSizer.screenWidth,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: AppColors.backGroundColor),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenSizer.blockSizeHorizontal, vertical: 8),
                  child: Row(
                    children: [
                      const DownloadResumeButton(),
                      const Spacer(),
                      Row(
                        children: [
                          const CustomMenuButton(title: "Home"),
                          HorizontalSpace(width: ScreenSizer.paddingSmall),
                          const CustomMenuButton(title: "About"),
                          HorizontalSpace(width: ScreenSizer.paddingSmall),
                          const CustomMenuButton(title: "Projects"),
                          HorizontalSpace(width: ScreenSizer.paddingSmall),
                          const CustomMenuButton(title: "Contact"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenSizer.width(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Obx(
                          () => homeScreenController.nameAnimation.value
                              ? AnimatedTextKit(
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
                                )
                              : AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                      'MD. NAZMUL HASAN',
                                      textStyle: const TextStyle(
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.textPirmary,
                                      ),
                                    ),
                                  ],
                                  repeatForever: true,
                                ),
                        )
                      ],
                    ),
                    CircleAvatar(
                      radius: ScreenSizer.width(10),
                      backgroundColor: AppColors.primaryColor,
                    )
                  ],
                ),
              ),
              const Spacer(),
              const Row(
                children: [],
              )
            ],
          ),
        ),
      ),
    );
  }
}
