import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();
  var activeIndex = 0.obs;
  var activeIndexT = 0.obs;
  CarouselController buttonCarouselController = CarouselController();
  CarouselController carouselController = CarouselController();
  late ScrollController scrollController;
  var scale = 1.0.obs;
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
  }

  final List<String> image =
      List.generate(5, (index) => 'https://picsum.photos/id/$index/200/300')
          .toList();

  late GoogleMapController mapController;

  final LatLng center = const LatLng(-9.500270, 119.201852);

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
}
