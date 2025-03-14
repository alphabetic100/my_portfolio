import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/src/app/features/home/controller/home_screen_controller.dart';
import 'package:my_portfolio/src/app/features/home/web_view/presentation/widget/download_resume_button.dart';
import 'package:my_portfolio/src/core/common/widgets/app_spacers.dart';
import 'package:my_portfolio/src/core/common/widgets/custom_menu_button.dart';
import 'package:my_portfolio/src/core/common/widgets/custom_social_media_button.dart';
import 'package:my_portfolio/src/core/common/widgets/home_animated_name.dart';
import 'package:my_portfolio/src/core/constant/app_constant.dart';
import 'package:my_portfolio/src/core/constant/image_path.dart';
import 'package:my_portfolio/src/core/constant/social_media_urls.dart';
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HomeAnimatedName(),
                        const VerticalSpace(height: 10),
                        SizedBox(
                          width: ScreenSizer.screenWidth * 0.5,
                          child: Text(
                            AppConstant.coverLatter,
                            style: TextStyle(
                                fontSize: ScreenSizer.rBodyTextSize,
                                color: AppColors.textSecondary),
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: ScreenSizer.width(25),
                      backgroundColor: AppColors.primaryColor,
                      backgroundImage: const AssetImage(ImagePath.profile),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenSizer.paddingMedium),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CustomSocialMediaButton(
                        imagePath: ImagePath.facebookLogo,
                        url: SocialMediaUrls.facebook),
                    HorizontalSpace(width: ScreenSizer.paddingSmall),
                    const CustomSocialMediaButton(
                        imagePath: ImagePath.xLogo,
                        url: SocialMediaUrls.twiter),
                    HorizontalSpace(width: ScreenSizer.paddingSmall),
                    const CustomSocialMediaButton(
                        imagePath: ImagePath.instagramLogo,
                        url: SocialMediaUrls.instagram),
                    HorizontalSpace(width: ScreenSizer.paddingSmall),
                    const CustomSocialMediaButton(
                        imagePath: ImagePath.linkdIn,
                        url: SocialMediaUrls.linkdIn),
                    HorizontalSpace(width: ScreenSizer.paddingSmall),
                    const CustomSocialMediaButton(
                        imagePath: ImagePath.gitHub,
                        url: SocialMediaUrls.gitHub),
                    HorizontalSpace(width: ScreenSizer.paddingSmall)
                  ],
                ),
              ),
              VerticalSpace(height: ScreenSizer.height(10))
            ],
          ),
        ),
      ),
    );
  }
}
