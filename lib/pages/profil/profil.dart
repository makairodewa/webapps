import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:footer/footer.dart';
import 'package:get/get.dart';
import 'package:webapps/constants/controllers.dart';
import 'package:webapps/constants/style.dart';
import 'package:webapps/helpers/reponsiveness.dart';
import 'package:webapps/pages/home/widget/span_widget.dart';
import 'package:webapps/widgets/custom_text.dart';
import 'package:webapps/widgets/footer.dart';

class ProfilDesaPage extends StatelessWidget {
  const ProfilDesaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: menuController.data.length,
      child: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            TabBar(
                labelColor: dark,
                unselectedLabelColor: lightGrey,
                indicatorColor: ColorConstant.titleColor,
                tabs: [
                  ...menuController.data
                      .map((e) => Tab(
                            text: e,
                          ))
                      .toList()
                ]),
            Expanded(
              child: TabBarView(children: [
                CustomScrollView(
                  slivers: [
                    SliverList(
                        delegate: SliverChildListDelegate(
                      [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  !ResponsiveWidget.isSmallScreen(context)
                                      ? MediaQuery.of(context).size.width / 10
                                      : 20,
                              vertical: 50),
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            itemCount: 10,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: 450,
                                    crossAxisSpacing: 10,
                                    crossAxisCount:
                                        ResponsiveWidget.isSmallScreen(context)
                                            ? 1
                                            : ResponsiveWidget.isMediumScreen(
                                                    context)
                                                ? 3
                                                : ResponsiveWidget.isCustomSize(
                                                        context)
                                                    ? 4
                                                    : 5),
                            itemBuilder: (context, index) {
                              return const CardAparatWidget();
                            },
                          ),
                        ),
                        Footer(child: const FooterViewWidget())
                      ],
                    )),
                  ],
                ),
                CustomScrollView(
                  slivers: [
                    SliverList(
                        delegate: SliverChildListDelegate(
                      [
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    !ResponsiveWidget.isSmallScreen(context)
                                        ? MediaQuery.of(context).size.width / 10
                                        : 0,
                                vertical: 50),
                            child: !ResponsiveWidget.isSmallScreen(context)
                                ? _buildRow()
                                : _buildColumn()),
                        Footer(
                          child: const FooterViewWidget(),
                        ),
                      ],
                    )),
                  ],
                ),
                CustomScrollView(
                  slivers: [
                    SliverList(
                        delegate: SliverChildListDelegate(
                      [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      !ResponsiveWidget.isSmallScreen(context)
                                          ? MediaQuery.of(context).size.width /
                                              10
                                          : 20,
                                  vertical: 50),
                              child: const SpanWidget(
                                title: "Sejarah",
                                subTitle: "Desa",
                              ),
                            ),
                            Expanded(
                                child: SizedBox(
                              height: 400,
                              width: double.infinity,
                              child: SvgPicture.asset(
                                'assets/svg/news_1.svg',
                              ),
                            )),
                          ],
                        ),
                        Footer(child: const FooterViewWidget())
                      ],
                    )),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Row _buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Card(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: _buildVisi(),
          )),
        ),
        Flexible(
          child: Card(
              child: Padding(
            padding: const EdgeInsets.all(10),
            child: _buildMisi(),
          )),
        ),
      ],
    );
  }

  Column _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: _buildVisi(),
        )),
        const SizedBox(
          height: 20,
        ),
        Card(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: _buildMisi(),
        )),
      ],
    );
  }

  Column _buildMisi() {
    return Column(
      children: [
        const Text(
          "MISI",
          style: TextStyle(
              fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Row(
          children: const [
            Text(
              "1",
              style: titleNews,
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
              child: Text(
                "Esse eu exercitation pariatur aliquip labore amet labore amet excepteur excepteur voluptate mollit occaecat.",
                style: bodyNews,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Row(
          children: const [
            Text(
              "1",
              style: titleNews,
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
              child: Text(
                "Esse eu exercitation pariatur aliquip labore amet labore amet excepteur excepteur voluptate mollit occaecat.",
                style: bodyNews,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Row(
          children: const [
            Text(
              "1",
              style: titleNews,
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
              child: Text(
                "Esse eu exercitation pariatur aliquip labore amet labore amet excepteur excepteur voluptate mollit occaecat.",
                style: bodyNews,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Column _buildVisi() {
    return Column(
      children: const [
        Text(
          "VISI",
          style: TextStyle(
              fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          "Labore cupidatat commodo quis laboris minim et anim consectetur mollit magna ipsum cillum. Mollit sunt laborum dolor et commodo deserunt excepteur occaecat aute fugiat non. Cupidatat sit Lorem voluptate voluptate mollit voluptate exercitation tempor dolor esse excepteur enim reprehenderit amet. Ea aute adipisicing aliquip aliquip pariatur ipsum reprehenderit pariatur sunt tempor do anim velit cillum. Cupidatat irure sit fugiat sint ut dolor commodo reprehenderit. Amet occaecat consectetur dolor sit enim amet cupidatat tempor Lorem aute nisi. Veniam exercitation et sint dolore sit veniam fugiat velit ullamco occaecat duis.",
          style: bodyNews,
        ),
      ],
    );
  }
}

class CardAparatWidget extends StatelessWidget {
  const CardAparatWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 30, bottom: 30, left: 30, right: 30),
        child: Column(
          children: const [
            SizedBox(
              width: 150,
              height: 150,
              child: CircleAvatar(
                maxRadius: 20,
                backgroundImage:
                    NetworkImage('https://picsum.photos/seed/picsum/200/300'),
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              text: "Ranus Ate",
              size: 16,
              weight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(
              text: "Laboris ea mollit eiusmod et magna",
              size: 13,
              weight: FontWeight.w400,
            ),
            SizedBox(
              height: 10,
            ),
            SocialAccountWidget(),
            CustomText(
              text: "Laboris ea mollit eiusmod et magna",
              size: 13,
              weight: FontWeight.w400,
            )
          ],
        ),
      ),
    );
  }
}
