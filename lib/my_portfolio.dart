import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_portfolio/src/app/routes/app_pages.dart';
import 'package:my_portfolio/src/core/bindings/controller_binder.dart';
import 'package:my_portfolio/src/core/utils/app_sizer/screen_sizer.dart';
import 'package:my_portfolio/src/core/utils/theme/app_theme.dart';

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSizer.init(context);
    return GetMaterialApp(
      theme: AppTheme.appTheme,
      initialBinding: ControllerBinder(),
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: AppPages.initialPage,
    );
  }
}
