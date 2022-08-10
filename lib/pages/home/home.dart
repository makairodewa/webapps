// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:webapps/pages/home/widget/about_widget.dart';
import 'package:webapps/pages/home/widget/images_slider.dart';
import 'package:webapps/pages/home/widget/indeicator_widget.dart';
import 'package:webapps/pages/home/widget/latest_widget.dart';
import 'package:webapps/pages/home/widget/tourism_place.dart';
import 'package:webapps/widgets/footer.dart';
import 'package:webapps/widgets/maps.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          ImgSliderHeader(),
          IndicatorWidget(),
          LatestNewsWidget(),
          AboutView(),
          TourismPlace(),
          MyMaps(),
          FooterView(),
        ],
      ),
    );
  }
}
