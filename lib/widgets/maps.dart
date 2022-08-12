import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapps/helpers/reponsiveness.dart';
import 'package:webapps/pages/home/widget/span_widget.dart';

class MyMaps extends StatelessWidget {
  const MyMaps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: !ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.width / 10
              : 0,
          vertical: 20),
      child: InkWell(
        // onTap: Utilty.openMyLocation,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SpanWidget(title: "Google ", subTitle: "Maps"),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: Get.width,
                      height:
                          ResponsiveWidget.isSmallScreen(context) ? 300 : 400,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.3),
                              blurRadius: 20,
                              spreadRadius: 2,
                            ),
                          ],
                          image: const DecorationImage(
                              image: AssetImage('assets/images/maps.png'),
                              fit: BoxFit.cover),
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(17))),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
