import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/src/app/features/home/controller/home_screen_controller.dart';
import 'package:my_portfolio/src/app/features/home/web_view/presentation/widget/download_resume_button.dart';
import 'package:my_portfolio/src/core/common/widgets/app_spacers.dart';
import 'package:my_portfolio/src/core/common/widgets/custom_menu_button.dart';
import 'package:my_portfolio/src/core/utils/app_sizer/screen_sizer.dart';
import 'package:my_portfolio/src/core/utils/colors/app_colors.dart';

class HomeTitleBar extends StatelessWidget {
  HomeTitleBar({super.key});
  final HomeScreenController homeScreenController =
      Get.find<HomeScreenController>();
  @override
  Widget build(BuildContext context) {
    return Container(
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
            Obx(
              () => Row(
                children: [
                  CustomMenuButton(
                    title: "Home",
                    isSelected: homeScreenController.currentPage.value == 0,
                    onTap: () {
                      if (homeScreenController.currentPage.value != 0) {
                        homeScreenController.changePage(0);
                      }
                    },
                  ),
                  HorizontalSpace(
                    width: ScreenSizer.paddingSmall,
                  ),
                  CustomMenuButton(
                    title: "About",
                    isSelected: homeScreenController.currentPage.value == 1,
                    onTap: () {
                      if (homeScreenController.currentPage.value != 1) {
                        homeScreenController.changePage(1);
                      }
                    },
                  ),
                  HorizontalSpace(width: ScreenSizer.paddingSmall),
                  CustomMenuButton(
                    title: "Projects",
                    isSelected: homeScreenController.currentPage.value == 2,
                    onTap: () {
                      if (homeScreenController.currentPage.value != 2) {
                        homeScreenController.changePage(2);
                      }
                    },
                  ),
                  HorizontalSpace(width: ScreenSizer.paddingSmall),
                  CustomMenuButton(
                    title: "Contact",
                    isSelected: homeScreenController.currentPage.value == 3,
                    onTap: () {
                      if (homeScreenController.currentPage.value != 3) {
                        homeScreenController.changePage(3);
                      }
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
