import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/src/app/features/home/controller/home_screen_controller.dart';
import 'package:my_portfolio/src/app/features/home/web_view/presentation/widget/home_body.dart';
import 'package:my_portfolio/src/app/features/home/web_view/presentation/widget/home_title_bar.dart';
import 'package:my_portfolio/src/core/common/widgets/app_spacers.dart';
import 'package:my_portfolio/src/core/utils/app_sizer/screen_sizer.dart';

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
               HomeTitleBar(),
              Expanded(
                  child: PageView(
                controller: homeScreenController.pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  HomeBody(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
