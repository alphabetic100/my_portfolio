import 'dart:async';

import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  RxBool nameAnimation = false.obs;

  void _starToggling() {
    Timer.periodic(const Duration(seconds: 3), (callback) {
      nameAnimation.value = !nameAnimation.value;
      _starToggling();
    });
  }

  @override
  void onInit() {
    super.onInit();
    _starToggling();
  }
}
