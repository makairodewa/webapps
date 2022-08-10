import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapps/constants/controllers.dart';
import 'package:webapps/constants/style.dart';
import 'package:webapps/helpers/reponsiveness.dart';
import 'package:webapps/routing/routes.dart';
import 'package:webapps/widgets/side_menu_item.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Image.asset(
                    "assets/icons/logo.png",
                    width: 28,
                  ),
                ),
              ],
            )
          : IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                key.currentState!.openDrawer();
              }),
      title: Container(
        child: Row(
          children: [
            Visibility(
                visible: !ResponsiveWidget.isSmallScreen(context),
                child: CustomText(
                  text: "Dash",
                  color: lightGrey,
                  size: 20,
                  weight: FontWeight.bold,
                )),
            Expanded(child: Container()),
            ...sideMenuItemRoutes
                .map((item) => Visibility(
                      visible: !ResponsiveWidget.isSmallScreen(context),
                      child: SideMenuItem(
                          itemName: item.name,
                          onTap: () {
                            if (item.route == authenticationPageRoute) {
                              Get.offAllNamed(authenticationPageRoute);
                              menuController
                                  .changeActiveItemTo(homePagegeDisplayName);
                            }
                            if (!menuController.isActive(item.name)) {
                              menuController.changeActiveItemTo(item.name);
                              if (ResponsiveWidget.isSmallScreen(context))
                                Get.back();
                              navigationController.navigateTo(item.route);
                            }
                          }),
                    ))
                .toList(),
          ],
        ),
      ),
      iconTheme: IconThemeData(color: dark),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );