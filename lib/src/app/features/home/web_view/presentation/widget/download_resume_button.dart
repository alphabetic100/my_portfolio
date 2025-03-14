import 'package:flutter/material.dart';
import 'package:my_portfolio/src/core/constant/social_media_urls.dart';
import 'package:my_portfolio/src/core/helper/app_helper.dart';
import 'package:my_portfolio/src/core/utils/colors/app_colors.dart';

class DownloadResumeButton extends StatelessWidget {
  const DownloadResumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppHelper.launchURL(SocialMediaUrls.resumeUrl);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: AppColors.black,
            boxShadow: const [
              BoxShadow(
                  color: AppColors.black,
                  blurStyle: BlurStyle.solid,
                  spreadRadius: 7,
                  blurRadius: 7)
            ]),
        child: const Text(
          "Download Resume",
          style: TextStyle(color: AppColors.textPirmary),
        ),
      ),
    );
  }
}
