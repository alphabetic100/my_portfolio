import 'package:flutter/material.dart';
import 'package:my_portfolio/src/core/common/widgets/app_spacers.dart';
import 'package:my_portfolio/src/core/utils/app_sizer/screen_sizer.dart';
import 'package:my_portfolio/src/core/utils/colors/app_colors.dart';

class AboutMeCard extends StatelessWidget {
  const AboutMeCard({super.key, required this.child, required this.title});
  final Widget child;

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenSizer.paddingLarge,
        vertical: ScreenSizer.paddingMedium,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.backGroundColor,
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: ScreenSizer.rAppTitleTextSize * 1.5,
              color: AppColors.textPirmary,
            ),
          ),
          const VerticalSpace(height: 16),
          child,
        ],
      ),
    );
  }
}
