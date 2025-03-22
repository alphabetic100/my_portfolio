import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxBool nameAnimation = false.obs;
  RxBool hireMeHover = false.obs;
  RxInt currentPage = 0.obs;
  final PageController pageController = PageController();

  void changePage(int index) {
    currentPage.value = index;
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);
  }

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
