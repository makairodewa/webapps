import 'package:flutter/material.dart';
import 'package:webapps/constants/style.dart';
import 'package:webapps/helpers/reponsiveness.dart';
import 'package:webapps/widgets/custom_text.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken),
          fit: BoxFit.cover,
          image: const AssetImage('assets/images/bg.jpg'),
        ),
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 1.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ResponsiveWidget.isSmallScreen(context)
            ? _buildColumnAbout()
            : _buildRowAbout(),
      ),
    );
  }

  Row _buildRowAbout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomText(
                  text: "Desa kalembu Kanaika",
                  weight: FontWeight.w900,
                  color: Colors.white,
                  size: 25.0),
              SizedBox(height: 20),
              CustomText(text: "Profile Desa", color: Colors.white, size: 25.0),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(
                text: "Visi Misi",
                color: Colors.white,
                size: 25.0,
                weight: FontWeight.w900,
              ),
              const SizedBox(height: 20),
              const CustomText(
                  text:
                      "Exercitation magna exercitation ex dolore dolore dolor laboris magna aliqua tempor irure minim reprehenderit nostrud. Deserunt consectetur sunt cupidatat laborum ad nisi aute. Eu Lorem magna labore elit dolore incididunt. Adipisicing reprehenderit velit sint adipisicing enim id qui laboris quis Lorem amet. Ut consectetur sit nulla est cupidatat et eu ullamco aute nostrud pariatur. Esse amet laborum velit pariatur voluptate nulla aliquip id ullamco ullamco eiusmod.",
                  color: Colors.white,
                  weight: FontWeight.w900,
                  size: 25.0),
              const SizedBox(height: 20),
              _buildBtnMore()
            ],
          ),
        ),
      ],
    );
  }

  Column _buildColumnAbout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomText(
            text: "Desa kalembu Kanaika",
            weight: FontWeight.w900,
            color: Colors.white,
            size: 25.0),
        const SizedBox(height: 20),
        const CustomText(text: "Profile Desa", color: Colors.white, size: 25.0),
        const CustomText(
          text: "Visi Misi",
          color: Colors.white,
          size: 25.0,
          weight: FontWeight.w900,
        ),
        const SizedBox(height: 20),
        const CustomText(
            text:
                "Exercitation magna exercitation ex dolore dolore dolor laboris magna aliqua tempor irure minim reprehenderit nostrud. Deserunt consectetur sunt cupidatat laborum ad nisi aute. Eu Lorem magna labore elit dolore incididunt. Adipisicing reprehenderit velit sint adipisicing enim id qui laboris quis Lorem amet. Ut consectetur sit nulla est cupidatat et eu ullamco aute nostrud pariatur. Esse amet laborum velit pariatur voluptate nulla aliquip id ullamco ullamco eiusmod.",
            color: Colors.white,
            weight: FontWeight.w900,
            size: 25.0),
        const SizedBox(height: 20),
        _buildBtnMore(),
      ],
    );
  }

  TextButton _buildBtnMore() {
    return TextButton.icon(
      style: OutlinedButton.styleFrom(primary: ColorConstant.titleColor),
      onPressed: () {},
      icon: const Icon(Icons.arrow_right_alt_rounded),
      label: const Text("Selengkapnya"),
    );
  }
}
