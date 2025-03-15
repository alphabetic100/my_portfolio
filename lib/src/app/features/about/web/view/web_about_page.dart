import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/src/core/common/widgets/about_me_card.dart';
import 'package:my_portfolio/src/core/common/widgets/app_spacers.dart';
import 'package:my_portfolio/src/core/constant/app_constant.dart';
import 'package:my_portfolio/src/core/utils/app_sizer/screen_sizer.dart';
import 'package:my_portfolio/src/core/utils/colors/app_colors.dart';

class WebAboutPage extends StatelessWidget {
  WebAboutPage({super.key});
  final List<String> badgeUrls = [
    "https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white",
    "https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=flutter&logoColor=white",
    "https://img.shields.io/badge/CCNA-%23F56A5A.svg?style=for-the-badge&logo=cisco&logoColor=white",
    "https://img.shields.io/badge/Git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white",
    "https://img.shields.io/badge/VS_Code-%23007ACC.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const VerticalSpace(height: 20),
          AboutMeCard(
            title: "About Me",
            child: Text(
              AppConstant.aboutMeText,
              style: TextStyle(color: AppColors.textSecondary),
            ),
          ),
          const VerticalSpace(height: 20),
          SizedBox(
            width: ScreenSizer.screenWidth,
            height: ScreenSizer.screenHeight * 0.4,
            child: Row(
              children: [
                Expanded(
                  child: AboutMeCard(
                      title: "Education",
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "· Diploma in Computer Science and Technology",
                            style: TextStyle(
                              color: AppColors.textSecondary,
                            ),
                          ),
                          Text(
                            "· SSC (Voc) in Computer Technology",
                            style: TextStyle(
                              color: AppColors.textSecondary,
                            ),
                          )
                        ],
                      )),
                ),
                const HorizontalSpace(width: 16),
                Expanded(
                  child: AboutMeCard(
                    title: "Experience",
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: ScreenSizer.screenWidth,
                          child: Expanded(
                            child: Row(
                              children: [
                                Text(
                                  "· BdCalling It Ltd.",
                                  style: TextStyle(
                                      color: AppColors.textPirmary,
                                      fontSize: ScreenSizer.width(4),
                                      fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                                Expanded(
                                  child: Text(
                                    "(Jan 2025 - Present)",
                                    style: TextStyle(
                                        color: AppColors.textSecondary,
                                        fontSize: ScreenSizer.rBodyTextSize),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          "  Jr. Flutter Developer",
                          style: TextStyle(
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const VerticalSpace(height: 20),
          AboutMeCard(
            title: "Skills & Technologies",
            child: Row(
              children: [SvgPicture.network("")],
            ),
          )
        ],
      ),
    );
  }
}
