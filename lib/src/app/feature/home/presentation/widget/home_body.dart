import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/src/app/feature/home/controller/home_page_controller.dart';
import 'package:my_portfolio/src/core/common/widgets/app_spacers.dart';
import 'package:my_portfolio/src/core/common/widgets/custom_social_media_button.dart';
import 'package:my_portfolio/src/core/common/widgets/home_animated_name.dart';
import 'package:my_portfolio/src/core/constant/app_constant.dart';
import 'package:my_portfolio/src/core/constant/image_path.dart';
import 'package:my_portfolio/src/core/constant/social_media_urls.dart';
import 'package:my_portfolio/src/core/utils/app_sizer/screen_sizer.dart';
import 'package:my_portfolio/src/core/utils/colors/app_colors.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});
  final HomePageController homePageController = Get.find<HomePageController>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Column(
        children: [
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenSizer.width(10)),
            child: Row(
              mainAxisAlignment: ScreenSizer.isMobile
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (ScreenSizer.isMobile) ...[
                      Container(
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, boxShadow: [
                          BoxShadow(
                            color: AppColors.backGroundColor,
                            blurRadius: ScreenSizer.width(5),
                            spreadRadius: ScreenSizer.width(3),
                          )
                        ]),
                        child: CircleAvatar(
                          radius: ScreenSizer.width(25),
                          backgroundColor: AppColors.primaryColor,
                          backgroundImage: const AssetImage(ImagePath.profile),
                        ),
                      ),
                      const VerticalSpace(height: 20),
                    ],
                    HomeAnimatedName(),
                    const VerticalSpace(height: 10),
                    Text(
                      "DART | FLUTTER",
                      style: TextStyle(
                          color: AppColors.textPirmary,
                          fontSize:
                              ScreenSizer.isMobile ? 15 : ScreenSizer.width(4)),
                    ),
                    const VerticalSpace(height: 10),
                    SizedBox(
                      width: ScreenSizer.screenWidth * 0.5,
                      child: Text(
                        AppConstant.coverLatter,
                        style: TextStyle(
                            fontSize: ScreenSizer.isMobile
                                ? 15
                                : ScreenSizer.width(3),
                            color: AppColors.textSecondary),
                      ),
                    ),
                    VerticalSpace(height: ScreenSizer.height(5)),
                    InkWell(
                      onTap: () {
                        log("message");
                      },
                      onHover: (value) {
                        homePageController.hireMeHover.value = value;
                      },
                      child: Obx(
                        () => Container(
                          height: ScreenSizer.height(9),
                          decoration: BoxDecoration(
                            color: AppColors.backGroundColor,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: homePageController.hireMeHover.value
                                    ? Colors.pinkAccent.shade200
                                    : AppColors.black,
                                spreadRadius: 3,
                                blurRadius: 7,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Center(
                              child: Text(
                                "Hire Me ",
                                style: TextStyle(
                                    color: AppColors.textPirmary,
                                    fontSize: ScreenSizer.rBodyTextSize),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                ScreenSizer.isMobile
                    ? const SizedBox.shrink()
                    : Container(
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, boxShadow: [
                          BoxShadow(
                            color: AppColors.backGroundColor,
                            blurRadius: ScreenSizer.width(5),
                            spreadRadius: ScreenSizer.width(3),
                          )
                        ]),
                        child: CircleAvatar(
                          radius: ScreenSizer.width(25),
                          backgroundColor: AppColors.primaryColor,
                          backgroundImage: const AssetImage(ImagePath.profile),
                        ),
                      )
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: ScreenSizer.paddingMedium),
            child: Row(
              mainAxisAlignment: ScreenSizer.isMobile
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.start,
              children: [
                CustomSocialMediaButton(
                  imagePath: ImagePath.facebookLogo,
                  url: SocialMediaUrls.facebook,
                  height: ScreenSizer.isMobile
                      ? ScreenSizer.width(7)
                      : ScreenSizer.width(10),
                ),
                HorizontalSpace(width: ScreenSizer.paddingSmall),
                CustomSocialMediaButton(
                    imagePath: ImagePath.xLogo,
                    url: SocialMediaUrls.twiter,
                    height: ScreenSizer.isMobile
                        ? ScreenSizer.width(7)
                        : ScreenSizer.width(10)),
                HorizontalSpace(width: ScreenSizer.paddingSmall),
                CustomSocialMediaButton(
                    height: ScreenSizer.isMobile
                        ? ScreenSizer.width(7)
                        : ScreenSizer.width(10),
                    imagePath: ImagePath.instagramLogo,
                    url: SocialMediaUrls.instagram),
                HorizontalSpace(width: ScreenSizer.paddingSmall),
                CustomSocialMediaButton(
                    height: ScreenSizer.isMobile
                        ? ScreenSizer.width(7)
                        : ScreenSizer.width(10),
                    imagePath: ImagePath.linkdIn,
                    url: SocialMediaUrls.linkdIn),
                HorizontalSpace(width: ScreenSizer.paddingSmall),
                CustomSocialMediaButton(
                    height: ScreenSizer.isMobile
                        ? ScreenSizer.width(7)
                        : ScreenSizer.width(10),
                    imagePath: ImagePath.gitHub,
                    url: SocialMediaUrls.gitHub),
                HorizontalSpace(width: ScreenSizer.paddingSmall)
              ],
            ),
          ),
          VerticalSpace(height: ScreenSizer.height(10))
        ],
      ),
    );
  }
}
