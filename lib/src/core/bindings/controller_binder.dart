import 'package:get/get.dart';
import 'package:my_portfolio/src/app/feature/home/controller/home_page_controller.dart';
import 'package:my_portfolio/src/app/feature/splash_screen/controller/splash_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
    Get.lazyPut<HomePageController>(
      () => HomePageController(),
      fenix: true,
    );
  }
}
