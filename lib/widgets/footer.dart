import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webapps/helpers/reponsiveness.dart';
import 'package:webapps/widgets/custom_text.dart';

class FooterViewWidget extends StatelessWidget {
  const FooterViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          child: _buildRow(context)),
    );
  }

  Row _buildRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            children: [
              const CustomText(
                text: "Desa Kelembu Kanaika",
              ),
              const SizedBox(
                height: 20,
              ),
              const SocialAccountWidget(),
              ResponsiveWidget.isSmallScreen(context)
                  ? _buildKontak()
                  : const SizedBox(),
              const Text(
                'Copyright ©2020, All Rights Reserved.',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 12.0,
                    color: Color(0xFF162A49)),
              ),
              const Text(
                'Powered by NanuGroup',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 12.0,
                    color: Color(0xFF162A49)),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: const [
              CustomText(
                text: "Alamat",
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: "Desa",
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: "Kabupaten",
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: "Provinsi",
              ),
            ],
          ),
        ),
        if (!ResponsiveWidget.isSmallScreen(context))
          Expanded(child: _buildKontak())
        else
          const SizedBox(),
      ],
    );
  }

  Column _buildKontak() {
    return Column(
      children: const [
        CustomText(
          text: "Kotak",
        ),
        SizedBox(
          height: 20,
        ),
        CustomText(
          text: "Admin",
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class SocialAccountWidget extends StatelessWidget {
  const SocialAccountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SocialIcon(
            icon: "assets/icons/google-icon.svg",
          ),
          SizedBox(
            width: 10,
          ),
          SocialIcon(
            icon: "assets/icons/facebook-2.svg",
          ),
          SizedBox(
            width: 10,
          ),
          SocialIcon(
            icon: "assets/icons/twitter.svg",
          ),
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 35,
        width: 35,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: Colors.grey.withOpacity(0.5),
            )),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
