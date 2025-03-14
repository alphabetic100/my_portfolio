import 'package:get/get.dart';
import 'package:my_portfolio/src/app/routes/app_pages.dart';

class SplashController extends GetxController {
  void simulatePage() {
    Future.delayed(const Duration(milliseconds: 1500), () {
      Get.offAllNamed(AppPages.initialPage);
    });
  }
}
