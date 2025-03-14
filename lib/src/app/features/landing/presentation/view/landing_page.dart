import 'package:flutter/material.dart';
import 'package:my_portfolio/src/app/features/home/mobile_view/presentation/view/home_page.dart';
import 'package:my_portfolio/src/app/features/home/web_view/presentation/view/web_home_page.dart';
import 'package:my_portfolio/src/core/utils/app_sizer/screen_sizer.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (ScreenSizer.isMobile) {
        return const MobileHomePage();
      } else {
        return WebHomePage();
      }
    });
  }
}
