import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:get/get.dart';
import 'package:webapps/helpers/reponsiveness.dart';
import 'package:webapps/pages/home/widget/span_widget.dart';
import 'package:webapps/pages/post/post.dart';
import 'package:webapps/widgets/custom_text.dart';
import 'package:webapps/widgets/footer.dart';

class WisataPage extends StatelessWidget {
  const WisataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildHeader(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: !ResponsiveWidget.isSmallScreen(context)
                  ? MediaQuery.of(context).size.width / 10
                  : 0,
              vertical: 50,
            ),
            child: SizedBox(
              width: Get.width,
              height: Get.height,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 400,
                      mainAxisExtent: 600,
                      childAspectRatio: 2),
                  itemBuilder: (context, index) => CardNewsWidget(
                    index: index,
                  ),
                ),
              ),
            ),
          ),
          Footer(child: const FooterViewWidget())
        ],
      ),
    );
  }

  _buildHeader() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken),
          fit: BoxFit.cover,
          image: const AssetImage('assets/images/img1.jpg'),
        ),
      ),
      width: double.infinity,
      height: Get.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SpanWidget(
            title: "Wisata",
            subTitle: "Desa",
            fontZise: 60,
            color: Colors.white,
          ),
          CustomText(
            text: ' KALEMBU KANAIKA',
            size: 60,
            color: Colors.white,
          ),
          CustomText(
            text: "Explore Kebudayaan alam ",
            size: 16,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
