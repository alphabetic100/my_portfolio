import 'package:flutter/material.dart';
import 'package:my_portfolio/src/core/helper/app_helper.dart';

class CustomSocialMediaButton extends StatelessWidget {
  const CustomSocialMediaButton({
    super.key,
    required this.imagePath,
    required this.url,
  });
  final String imagePath;
  final String url;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppHelper.launchURL(url);
      },
      child: Image.asset(
        imagePath,
        height: 30,
      ),
    );
  }
}
