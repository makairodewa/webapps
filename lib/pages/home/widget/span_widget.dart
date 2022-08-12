import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapps/constants/style.dart';
import 'package:webapps/helpers/reponsiveness.dart';
import 'package:webapps/widgets/custom_button.dart';

class SpanWidget extends StatelessWidget {
  const SpanWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    this.fontZise,
    this.color,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final double? fontZise;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: title,
          style: GoogleFonts.montserrat(
              color: color ?? Colors.black,
              fontSize: fontZise ?? 40,
              fontWeight: FontWeight.w400),
          children: [
            TextSpan(
              text: subTitle,
              style: GoogleFonts.montserrat(
                  color: ColorConstant.titleColor,
                  fontSize: fontZise ?? 40,
                  fontWeight: FontWeight.w400),
            )
          ]),
    );
  }
}

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !ResponsiveWidget.isSmallScreen(context)
        ? const Expanded(
            child: ArtikelSimilar(),
          )
        : const ArtikelSimilar();
  }
}

class ArtikelSimilar extends StatelessWidget {
  const ArtikelSimilar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 77,
            height: 7,
            decoration: BoxDecoration(
                color: ColorConstant.buttonShadowColor,
                borderRadius: const BorderRadius.all(Radius.circular(100))),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: SpanWidget(
              title: "Artikel ",
              subTitle: "Serupa",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const NewLaterWidget(),
          const SizedBox(height: 20),
          // Container(
          //   padding:
          //       const EdgeInsets.only(top: 12, bottom: 12, left: 20, right: 20),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(100),
          //     border: Border.all(color: ColorConstant.titleColor),
          //   ),
          //   child: InkWell(
          //     onTap: () {},
          //     child: Text(
          //       'Lihat Semua',
          //       style: GoogleFonts.montserrat(
          //           color: ColorConstant.titleColor,
          //           fontSize: 16,
          //           fontWeight: FontWeight.w500),
          //     ),
          //   ),
          // ),

          const CustomButtonWidget(text: "Lihat Semua"),
        ],
      ),
    );
  }
}

class NewLaterWidget extends StatelessWidget {
  const NewLaterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Card(
        child: Column(
          children: [
            ...List.generate(
                5,
                (index) => Card(
                        child: ListTile(
                      onTap: () {},
                      leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: const CircleAvatar(
                            child: Image(
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                              image: AssetImage('assets/images/profile.jpg'),
                            ),
                          )),
                      contentPadding: const EdgeInsets.all(8),
                      trailing: const Text(
                        "10/2/200",
                        style: dateNews,
                        maxLines: 4,
                      ),
                      subtitle: const Text(
                        "Id officia non mollit fugiat duis veniam ut eu et nostrud ullamco. Commodo proident ex duis reprehenderit labore cillum laborum nostrud officia deserunt exercitation ad. Magna incididunt deserunt aliqua velit.",
                        style: bodyNews,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                      ),
                      title: const Text(
                        "Title",
                        style: titleNews,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
