import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapps/constants/controllers.dart';
import 'package:webapps/constants/style.dart';
import 'package:webapps/pages/home/widget/span_widget.dart';

class AparaturDesaView extends StatelessWidget {
  const AparaturDesaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
      child: Material(
        shadowColor: Colors.black26,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SpanWidget(
              title: "Aparat",
              subTitle: "Desa",
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 500,
                    child: ListView.builder(
                      controller: homeController.scrollController,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 250,
                                height: 300,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white.withOpacity(0.3),
                                        blurRadius: 20,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                    image: const DecorationImage(
                                        fit: BoxFit.fitHeight,
                                        image: AssetImage(
                                          'assets/icons/logo.png',
                                        )),
                                    color: ColorConstant.violet,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(17))),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'Launch a Project',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: ColorConstant.titleColor),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const SizedBox(
                                width: 260,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    'It is a long established fact that a reader will be distracted by',
                                    style: bodyNews,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
