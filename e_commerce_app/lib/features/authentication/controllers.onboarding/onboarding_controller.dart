import 'package:e_commerce_app/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //Update Current Index when Page Scroll

  void updatePageIndicator(index) => currentPageIndex.value = index;

  //Jump to the specific dot sle page

  void dotNavigateionClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }
// Update Current Index & jump to Next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }
  // Update Current Index & jump to the last Page

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
