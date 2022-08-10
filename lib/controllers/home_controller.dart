import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();

  var activeIndex = 0.obs;
  var activeIndexT = 0.obs;
  CarouselController buttonCarouselController = CarouselController();
  CarouselController carouselController = CarouselController();
  late ScrollController scrollController;
  @override
  void onInit() {
    scrollController = ScrollController();
    super.onInit();
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  String? selectedValue;

  var language = <String>[
    'Aparatur Desa',
    'Pemerintah',
  ];

  void onSelected(String value) {
    selectedValue = value;
    update();
    // changeLanguage(selectedValue);
  }

  // changeLanguage(String? selectedLanguage) {
  //   switch (selectedLanguage) {
  //     case 'Aparatur Desa':
  //       Get.toNamed(Routes.APARAT);
  //       break;
  //     case 'Pemerintah':
  //       Get.toNamed(Routes.VISI_MISI);
  //       break;
  //   }
  // }

  final List<String> image =
      List.generate(5, (index) => 'https://picsum.photos/id/$index/200/300')
          .toList();
}
