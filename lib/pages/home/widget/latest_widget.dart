import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapps/constants/style.dart';
import 'package:webapps/helpers/reponsiveness.dart';
import 'package:webapps/pages/home/widget/span_widget.dart';
import 'package:webapps/widgets/custom_text.dart';

class LatestNewsWidget extends StatelessWidget {
  const LatestNewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? _buildColumnMobile()
        : _buildRowDesktop();
  }

  Padding _buildRowDesktop() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 50),
      child: Column(
        children: [
          SpanWidget(
            title: "Berita ",
            subTitle: "Terbaru",
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(child: NewsPost()),
              SizedBox(
                width: 20,
              ),
              CustomBtn(),
            ],
          ),
        ],
      ),
    );
  }

  Padding _buildColumnMobile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(
            height: 20,
          ),
          SpanWidget(
            title: "Berita ",
            subTitle: "Terbaru",
          ),
          SizedBox(
            height: 20,
          ),
          NewsPost(),
          SizedBox(
            width: 20,
          ),
          CustomBtn(),
        ],
      ),
    );
  }
}

class NewsPost extends StatelessWidget {
  const NewsPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: ResponsiveWidget.isSmallScreen(context)
              ? double.infinity
              : Get.width / 2,
          height: 300,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: ColorConstant.titleColor.withOpacity(0.3),
                  blurRadius: 20,
                  spreadRadius: 2,
                ),
              ],
              image: const DecorationImage(
                  image: AssetImage('assets/images/img1.jpg'),
                  fit: BoxFit.cover),
              color: ColorConstant.violet,
              borderRadius: const BorderRadius.all(Radius.circular(17))),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Launch a Project',
              style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            CustomText(
              text: "11/11/2022",
            ),
          ],
        ),
        const SizedBox(height: 15),
        const SizedBox(
          child: Text(
            "Et nisi sunt nisi aliqua sit. Veniam irure anim laborum voluptate ea velit voluptate. Esse laborum pariatur ut est do aliquip labore ipsum consequat consequat sint excepteur reprehenderit. Irure ipsum enim minim cupidatat labore elit sint ut labore sit dolor sint enim. Sunt proident labore consectetur in consequat aute enim sunt aliqua ea consectetur minim et culpa. Aliqua quis duis ullamco consequat nostrud amet.",
            style: bodyNews,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
