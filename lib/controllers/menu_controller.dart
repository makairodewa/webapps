import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapps/constants/style.dart';
import 'package:webapps/routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = homePagegeDisplayName.obs;

  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isHovering(String itemName) => hoverItem.value == itemName;

  isActive(String itemName) => activeItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case newsPageDisplayName:
        return _customIcon(Icons.newspaper, itemName);
      case toursimPlacePageDisplayName:
        return _customIcon(Icons.place, itemName);
      case homePagegeDisplayName:
        return _customIcon(Icons.home, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: dark);

    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }
}
