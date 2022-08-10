// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Color light = Color(0xFFF7F8FC);
Color lightGrey = Color(0xFFA4A6B3);
Color dark = Color(0xFF363740);
Color active = Color(0xFF3C19C0);

class ColorConstant {
  static Color purple = fromHex('#451088');
  static Color logoPurple = fromHex('#7A1C7C');
  static Color blue = fromHex('#3E0864');
  static Color violet = fromHex('#10064E');
  static Color titleColor = fromHex('#FFA98C');
  static Color textBlueColor = fromHex('#2AD8EB');
  static Color buttonBgColor = fromHex('#70316E');
  static Color buttonShadowColor = fromHex('#2AF6FF');
  static Color bitcoinBgColor = fromHex('#11074F');
  static Color inrTxtColor = fromHex('#2C7CDE');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

const titleNews = TextStyle(fontSize: 20, fontWeight: FontWeight.w700);
const dateNews = TextStyle(fontSize: 13, fontWeight: FontWeight.w400);
const bodyNews = TextStyle(fontSize: 16, fontWeight: FontWeight.w400);

final List<String> image =
    List.generate(5, (index) => 'https://picsum.photos/id/$index/200/300')
        .toList();
