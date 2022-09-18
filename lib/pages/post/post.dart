import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:footer/footer.dart';
import 'package:get/get.dart';
import 'package:webapps/constants/controllers.dart';
import 'package:webapps/constants/style.dart';
import 'package:webapps/helpers/reponsiveness.dart';
import 'package:webapps/pages/home/widget/span_widget.dart';
import 'package:webapps/widgets/footer.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        if (ResponsiveWidget.isSmallScreen(context))
          _buildContainer()
        else
          _buildRow(context),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: !ResponsiveWidget.isSmallScreen(context)
                ? MediaQuery.of(context).size.width / 10
                : 20,
            vertical: 50,
          ),
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: GridView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 400,
                  mainAxisExtent: 600,
                  childAspectRatio: 2),
              itemBuilder: (context, index) {
                return CardNewsWidget(index: index);
              },
            ),
          ),
        ),
        Footer(child: const FooterViewWidget())
      ],
    ));
  }

  Padding _buildRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: !ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.width / 10
              : 20,
          vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Flexible(
            child: SpanWidget(
              title: "Berita ",
              subTitle: "Desa",
            ),
          ),
          Flexible(
            child: SizedBox(
              height: 400,
              width: double.infinity,
              child: SvgPicture.asset(
                'assets/svg/news_1.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildContainer() {
    return const SpanWidget(
      title: "Berita ",
      subTitle: "Desa",
    );
  }
}

class CardNewsWidget extends StatelessWidget {
  const CardNewsWidget({
    Key? key,
    required int index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
        scale: homeController.scale.value,
        duration: const Duration(microseconds: 500),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(
                image: AssetImage('assets/images/bg.jpg'),
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Cerita Para Pencari Kelelawar di Gorontalo 'Kebal' Covid-19, Kok Bisa?",
                      style: titleNews,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("10/10/202$int", style: dateNews),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Liputan6.com, Gorontalo - Kelelawar merupakan satwa liar santer dikabarkan sebagai pembawa virus penyebab Covid-19. Namun, hal itu ditepis oleh sejumlah pencari kelelawar di Desa Olibu, Kecamatan Pagu ",
                      style: bodyNews,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text("Selengkapnya",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400))),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
