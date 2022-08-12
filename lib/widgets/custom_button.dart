import 'package:flutter/material.dart';
import 'package:webapps/constants/style.dart';
import 'package:webapps/widgets/custom_text.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(100),
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: () {},
        child: Container(
          width: 190,
          padding:
              const EdgeInsets.only(top: 12, bottom: 12, left: 20, right: 20),
          decoration: BoxDecoration(
              color: ColorConstant.titleColor,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: ColorConstant.titleColor),
              boxShadow: [
                BoxShadow(
                    color: ColorConstant.titleColor,
                    blurRadius: 10,
                    offset: const Offset(1, 3))
              ]),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: text,
                color: Colors.white,
              ),
              const Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
