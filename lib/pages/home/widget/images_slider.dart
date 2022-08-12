import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:webapps/constants/controllers.dart';
import 'package:webapps/helpers/reponsiveness.dart';
import 'package:webapps/pages/home/widget/img_widget.dart';

class ImgSliderHeader extends StatelessWidget {
  const ImgSliderHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 20),
      child: SizedBox(
        width: double.infinity,
        height: ResponsiveWidget.isSmallScreen(context) ? 400 : 500,
        child: CarouselSlider.builder(
          carouselController: homeController.buttonCarouselController,
          itemCount: homeController.image.length,
          options: CarouselOptions(
            aspectRatio: ResponsiveWidget.isSmallScreen(context) ? 1 : .7,
            onPageChanged: (index, reason) {
              homeController.activeIndex(index);
            },
          ),
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return CardHeader(
              index: index,
            );
          },
        ),
      ),
    );
  }
}
