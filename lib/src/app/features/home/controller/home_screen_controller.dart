import 'dart:async';

import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  RxBool nameAnimation = false.obs;

  void _startToggling() {
    Future.delayed(const Duration(seconds: 3), () {
      nameAnimation.value = !nameAnimation.value;
      _startToggling();
    });
  }

  @override
  void onInit() {
    super.onInit();
    _startToggling();
  }
}
