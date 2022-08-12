import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:footer/footer.dart';
import 'package:get/get.dart';
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
      length: 4,
      child: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            TabBar(
              labelColor: dark,
              unselectedLabelColor: lightGrey,
              indicatorColor: ColorConstant.titleColor,
              tabs: const [
                Tab(
                  icon: Icon(Icons.person),
                  child: Text("Aparat Desa"),
                ),
                Tab(
                  icon: Icon(Icons.book),
                  child: Text("Visi Misi"),
                ),
                Tab(
                  child: Text("Sejarah Desa"),
                ),
                Tab(
                  child: Text("pok"),
                ),
              ],
            ),
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
                                      : 0,
                              vertical: 50),
                          child: GridView.builder(
                            shrinkWrap: true,
                            itemCount: 10,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    mainAxisExtent: 450,
                                    crossAxisSpacing: 10,
                                    crossAxisCount:
                                        ResponsiveWidget.isSmallScreen(context)
                                            ? 2
                                            : ResponsiveWidget.isMediumScreen(
                                                    context)
                                                ? 4
                                                : 6),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Card(
                                    child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    children: const [
                                      Text(
                                        "VISI",
                                        style: TextStyle(
                                            fontSize: 40,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Labore cupidatat commodo quis laboris minim et anim consectetur mollit magna ipsum cillum. Mollit sunt laborum dolor et commodo deserunt excepteur occaecat aute fugiat non. Cupidatat sit Lorem voluptate voluptate mollit voluptate exercitation tempor dolor esse excepteur enim reprehenderit amet. Ea aute adipisicing aliquip aliquip pariatur ipsum reprehenderit pariatur sunt tempor do anim velit cillum. Cupidatat irure sit fugiat sint ut dolor commodo reprehenderit. Amet occaecat consectetur dolor sit enim amet cupidatat tempor Lorem aute nisi. Veniam exercitation et sint dolore sit veniam fugiat velit ullamco occaecat duis.",
                                        style: bodyNews,
                                      ),
                                    ],
                                  ),
                                )),
                              ),
                              Flexible(
                                child: Card(
                                    child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Text(
                                        "MISI",
                                        style: TextStyle(
                                            fontSize: 40,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
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
                                      SizedBox(
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
                                      SizedBox(
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
                                  ),
                                )),
                              ),
                            ],
                          ),
                        ),
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
                                          : 0,
                                  vertical: 50),
                              child: SpanWidget(
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
                CustomScrollView(
                  slivers: [
                    SliverList(
                        delegate: SliverChildListDelegate(
                      [Footer(child: const FooterViewWidget())],
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
}

class CardAparatWidget extends StatelessWidget {
  const CardAparatWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (value) {},
      // onEnter: (e) => _mouseEnter(true),
      // onExit: (e) => _mouseEnter(false),
      child: Card(
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
      ),
    );
  }
}
