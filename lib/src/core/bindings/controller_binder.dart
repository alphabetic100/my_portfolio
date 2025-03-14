import 'package:get/get.dart';
import 'package:my_portfolio/src/app/features/home/controller/home_screen_controller.dart';
import 'package:my_portfolio/src/app/features/splash_screen/controller/splash_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(),
    );
    Get.lazyPut<HomeScreenController>(
      () => HomeScreenController(),
      fenix: true,
    );
  }
}
