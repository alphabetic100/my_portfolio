import 'package:get/get.dart';
import 'package:my_portfolio/src/app/routes/app_pages.dart';

class SplashController extends GetxController {
  void simulatePage() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(AppPages.landingPage);
    });
  }

  @override
  void onInit() {
    super.onInit();
    simulatePage();
  }
}
