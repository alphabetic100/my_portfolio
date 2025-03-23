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
                          _skillCard(
                              "Diploma in Computer Science and Technology"),
                          _skillCard("SSC (Voc) in Computer Technology"),
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

  Widget _skillCard(String skill) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: ScreenSizer.isMobile ? 8.0 : 3),
          child: Icon(
            Icons.circle,
            color: AppColors.textPirmary,
            size: ScreenSizer.isMobile ? 10 : ScreenSizer.width(2),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Text(
            skill,
            style: const TextStyle(
              color: AppColors.primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
