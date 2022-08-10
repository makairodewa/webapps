import 'package:flutter/material.dart';
import 'package:webapps/helpers/reponsiveness.dart';
import 'package:webapps/widgets/horizontal_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;

  const SideMenuItem({super.key, required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context)) {
      return HorizontalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    } else if (ResponsiveWidget.isMediumScreen(context)) {
      return HorizontalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    } else if (ResponsiveWidget.isSmallScreen(context)) {
      return HorizontalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    } else {
      return HorizontalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    }
  }
}
