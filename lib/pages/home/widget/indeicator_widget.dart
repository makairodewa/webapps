import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:webapps/constants/controllers.dart';
import 'package:webapps/constants/style.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 40),
          child: AnimatedSmoothIndicator(
              activeIndex: homeController.activeIndex.value,
              effect: WormEffect(
                offset: 16.0,
                dotWidth: 16.0,
                dotHeight: 16.0,
                spacing: 8.0,
                radius: 16,
                dotColor: Colors.grey,
                activeDotColor: ColorConstant.titleColor,
                strokeWidth: 1.0,
              ),
              count: homeController.image.length),
        ));
  }
}
