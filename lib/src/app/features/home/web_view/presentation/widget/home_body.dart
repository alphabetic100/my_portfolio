import 'package:flutter/material.dart';
import 'package:my_portfolio/src/core/common/widgets/app_spacers.dart';
import 'package:my_portfolio/src/core/common/widgets/custom_social_media_button.dart';
import 'package:my_portfolio/src/core/common/widgets/home_animated_name.dart';
import 'package:my_portfolio/src/core/constant/app_constant.dart';
import 'package:my_portfolio/src/core/constant/image_path.dart';
import 'package:my_portfolio/src/core/constant/social_media_urls.dart';
import 'package:my_portfolio/src/core/utils/app_sizer/screen_sizer.dart';
import 'package:my_portfolio/src/core/utils/colors/app_colors.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Column(
        children: [
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenSizer.width(10)),
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
                Container(
                  decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CustomSocialMediaButton(
                    imagePath: ImagePath.facebookLogo,
                    url: SocialMediaUrls.facebook),
                HorizontalSpace(width: ScreenSizer.paddingSmall),
                const CustomSocialMediaButton(
                    imagePath: ImagePath.xLogo, url: SocialMediaUrls.twiter),
                HorizontalSpace(width: ScreenSizer.paddingSmall),
                const CustomSocialMediaButton(
                    imagePath: ImagePath.instagramLogo,
                    url: SocialMediaUrls.instagram),
                HorizontalSpace(width: ScreenSizer.paddingSmall),
                const CustomSocialMediaButton(
                    imagePath: ImagePath.linkdIn, url: SocialMediaUrls.linkdIn),
                HorizontalSpace(width: ScreenSizer.paddingSmall),
                const CustomSocialMediaButton(
                    imagePath: ImagePath.gitHub, url: SocialMediaUrls.gitHub),
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
