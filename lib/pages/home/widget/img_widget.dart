// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:webapps/constants/controllers.dart';
import 'package:webapps/helpers/reponsiveness.dart';
import 'package:webapps/widgets/custom_button.dart';
import 'package:webapps/widgets/custom_text.dart';

class NewWidgetImg extends StatelessWidget {
  const NewWidgetImg({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          width: double.infinity,
          child: InkResponse(
              child: Image.network(
            homeController.image[index],
            fit: BoxFit.cover,
          )),
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomText(
          text: "Travel, enjoy and live a new and full life",
          color: const Color(0xFF181E4B),
          weight: FontWeight.bold,
          size: (ResponsiveWidget.isSmallScreen(context)) ||
                  ((ResponsiveWidget.isMediumScreen(context)))
              ? 40
              : 80,
          maxLines: (ResponsiveWidget.isSmallScreen(context)) ? 1 : 3,
        ),
        SizedBox(
          height: (ResponsiveWidget.isSmallScreen(context)) ||
                  ((ResponsiveWidget.isMediumScreen(context)))
              ? 10
              : 20,
        ),
        CustomText(
          text:
              "Ea dolore est labore reprehenderit ullamco. Ut sunt commodo proident dolore et ut occaecat nulla nostrud amet. Officia laborum magna eiusmod fugiat excepteur adipisicing enim labore culpa aute. Et ut exercitation pariatur nulla officia duis officia reprehenderit nostrud eiusmod ipsum. Id veniam magna cillum pariatur ad laboris. Ut magna est velit deserunt fugiat aliqua ea ut nisi. Et ullamco voluptate duis Lorem exercitation non do dolor ipsum duis reprehenderit.",
          color: Color(0xFF181E4B),
          weight: FontWeight.bold,
          size: ResponsiveWidget.isSmallScreen(context) ? 13 : 15,
        ),
      ],
    );
  }
}

class CardHeader extends StatelessWidget {
  const CardHeader({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    var flexible = Flexible(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: (ResponsiveWidget.isSmallScreen(context)) ||
                    ((ResponsiveWidget.isMediumScreen(context)))
                ? 10
                : 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleWidget(),
            (ResponsiveWidget.isSmallScreen(context)) ||
                    ((ResponsiveWidget.isMediumScreen(context)))
                ? Center(child: CustomButtonWidget(text: "Selengkapnya"))
                : CustomButtonWidget(text: "Selengkapnya")
          ],
        ),
      ),
    );
    return (ResponsiveWidget.isLargeScreen(context)) ||
            ((ResponsiveWidget.isMediumScreen(context)))
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              flexible,
              NewWidgetImg(index: index),
            ],
          )
        : Column(
            children: [
              NewWidgetImg(index: index),
              const SizedBox(
                height: 20,
              ),
              flexible,
            ],
          );
  }
}
