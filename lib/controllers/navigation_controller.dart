import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  static NavigationController instance = Get.find();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  goBack() => navigatorKey.currentState!.pop();

  @override
  void onInit() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack,
        overlays: [SystemUiOverlay.top]);
    super.onInit();
  }
}
