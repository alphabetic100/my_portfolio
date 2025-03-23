import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/src/app/feature/about/presentation/view/about_me_page.dart';
import 'package:my_portfolio/src/app/feature/contact/presentation/view/contact_me_page.dart';
import 'package:my_portfolio/src/app/feature/home/controller/home_page_controller.dart';
import 'package:my_portfolio/src/app/feature/home/presentation/widget/home_body.dart';
import 'package:my_portfolio/src/app/feature/home/presentation/widget/home_title_bar.dart';
import 'package:my_portfolio/src/core/common/widgets/app_spacers.dart';
import 'package:my_portfolio/src/core/utils/app_sizer/screen_sizer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomePageController homeScreenController =
      Get.find<HomePageController>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                if (!(ScreenSizer.isMobile)) ...[
                  VerticalSpace(height: ScreenSizer.paddingSmall),
                  HomeTitleBar(),
                ],
                Expanded(
                  child: Row(
                    children: [
                      if (ScreenSizer.isMobile) ...[
                        RotatedBox(
                          quarterTurns: 1,
                          child: HomeTitleBar(),
                        ),
                        ScreenSizer.isMobile
                            ? const HorizontalSpace(width: 10)
                            : const SizedBox.shrink(),
                      ],
                      Expanded(
                          child: PageView(
                        controller: homeScreenController.pageController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          HomeBody(),
                          const AboutMePage(),
                          const AboutMePage(),
                          const ContactMePage(),
                        ],
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
