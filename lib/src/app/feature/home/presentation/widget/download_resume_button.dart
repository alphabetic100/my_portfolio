import 'package:flutter/material.dart';
import 'package:my_portfolio/src/core/constant/social_media_urls.dart';
import 'package:my_portfolio/src/core/helper/app_helper.dart';
import 'package:my_portfolio/src/core/utils/app_sizer/screen_sizer.dart';
import 'package:my_portfolio/src/core/utils/colors/app_colors.dart';

class DownloadResumeButton extends StatefulWidget {
  const DownloadResumeButton({super.key});

  @override
  State<DownloadResumeButton> createState() => _DownloadResumeButtonState();
}

class _DownloadResumeButtonState extends State<DownloadResumeButton> {
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          onHover = value;
        });
      },
      onTap: () {
        AppHelper.launchURL(SocialMediaUrls.resumeUrl);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: ScreenSizer.isMobile ? ScreenSizer.width(3) : 8,
            horizontal: ScreenSizer.isMobile ? ScreenSizer.width(6) : 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: AppColors.black,
          boxShadow: [
            BoxShadow(
              color: onHover ? Colors.pinkAccent.shade200 : AppColors.black,
              spreadRadius: onHover ? 5 : 0,
              blurRadius: 7,
            ),
          ],
        ),
        child: Text(
          "Download Resume",
          style: TextStyle(
              color: AppColors.textPirmary,
              fontSize: ScreenSizer.isMobile ? ScreenSizer.width(4) : null),
        ),
      ),
    );
  }
}
