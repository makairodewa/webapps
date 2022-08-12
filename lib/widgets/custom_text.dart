import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final int? maxLines;

  const CustomText(
      {Key? key, this.text, this.size, this.color, this.weight, this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: size ?? 16,
        color: color ?? Colors.black,
        fontWeight: weight ?? FontWeight.normal,
      ),
      textAlign: TextAlign.center,
      maxLines: maxLines ?? 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
