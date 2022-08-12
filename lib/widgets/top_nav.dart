import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webapps/constants/controllers.dart';
import 'package:webapps/constants/style.dart';
import 'package:webapps/helpers/reponsiveness.dart';
import 'package:webapps/routing/routes.dart';
import 'package:webapps/widgets/side_menu_item.dart';

import 'custom_text.dart';

PreferredSize topNavigationBar(
        BuildContext context, GlobalKey<ScaffoldState> key) =>
    PreferredSize(
      preferredSize: Size(
          MediaQuery.of(context).size.width,
          !ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height / 10
              : MediaQuery.of(context).size.height / 10),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveWidget.isSmallScreen(context)
                ? 0
                : MediaQuery.of(context).size.width / 10),
        child: AppBar(
          leading: !ResponsiveWidget.isSmallScreen(context)
              ? Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: !ResponsiveWidget.isLargeScreen(context)
                              ? 15
                              : 0),
                      child: Image.asset(
                        "assets/icons/logo.png",
                        width: 28,
                      ),
                    ),
                  ],
                )
              : IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    key.currentState!.openDrawer();
                  }),
          title: Row(
            children: [
              Visibility(
                visible: !ResponsiveWidget.isCustomSize(context) &&
                    !ResponsiveWidget.isSmallScreen(context),
                child: CustomText(
                  text: "Desa Kalembu Kanaika",
                  color: lightGrey,
                  size: 20,
                  weight: FontWeight.bold,
                ),
              ),
              Obx(
                () => Visibility(
                  visible: ResponsiveWidget.isSmallScreen(context),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    color: lightGrey,
                    size: 20,
                    weight: FontWeight.bold,
                  ),
                ),
              ),
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
                                if (ResponsiveWidget.isSmallScreen(context)) {
                                  Get.back();
                                }
                                navigationController.navigateTo(item.route);
                              }
                            }),
                      ))
                  .toList(),
            ],
          ),
          iconTheme: IconThemeData(color: dark),
          elevation: 0,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
      ),
    );
