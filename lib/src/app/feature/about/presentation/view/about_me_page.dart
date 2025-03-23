import 'package:flutter/material.dart';
import 'package:my_portfolio/src/core/common/widgets/about_me_card.dart';
import 'package:my_portfolio/src/core/common/widgets/app_spacers.dart';
import 'package:my_portfolio/src/core/constant/app_constant.dart';
import 'package:my_portfolio/src/core/utils/app_sizer/screen_sizer.dart';
import 'package:my_portfolio/src/core/utils/colors/app_colors.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});
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
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "· BdCalling It Ltd.",
                                    style: TextStyle(
                                        color: AppColors.textPirmary,
                                        fontSize: ScreenSizer.width(4),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  TextSpan(
                                    text: "  (Jan 2025 - Present)",
                                    style: TextStyle(
                                      color: AppColors.textSecondary,
                                    ),
                                  ),
                                ],
                              ),
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
          // AboutMeCard(
          //   title: "Skills & Technologies",
          //   child: Row(
          //     children: [SvgPicture.network("")],
          //   ),
          // )
        ],
      ),
    );
  }
}
