import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:webapps/constants/controllers.dart';
import 'package:webapps/constants/style.dart';
import 'package:webapps/helpers/reponsiveness.dart';
import 'package:webapps/pages/home/widget/span_widget.dart';
import 'package:webapps/widgets/custom_text.dart';

class TourismPlace extends StatelessWidget {
  const TourismPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        children: [
          const SpanWidget(title: "Wisata ", subTitle: "Desa Kami"),
          const SizedBox(
            height: 20,
          ),
          CarouselSlider.builder(
              itemCount: 10,
              carouselController: homeController.carouselController,
              itemBuilder: (context, index, realIndex) {
                return SizedBox(
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 350,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    const AssetImage('assets/images/img1.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.2),
                                    BlendMode.darken),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.black.withOpacity(.3),
                            child: Column(
                              children: const [
                                CustomText(
                                  text: "Kampung Adat",
                                  size: 40,
                                  weight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                CustomText(
                                  text: "Wanno Mema",
                                  size: 40,
                                  weight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              options: CarouselOptions(
                height: 500,
                initialPage: 0,
                enableInfiniteScroll: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                viewportFraction:
                    ResponsiveWidget.isSmallScreen(context) ? 0.9 : 0.5,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) =>
                    homeController.activeIndexT(index),
              )),
          Obx(() => AnimatedSmoothIndicator(
              activeIndex: homeController.activeIndexT.value,
              effect: JumpingDotEffect(
                activeDotColor: ColorConstant.titleColor,
                dotWidth: 10,
                dotHeight: 10,
              ),
              count: image.length)),
        ],
      ),
    );
  }
}
