import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapps/constants/controllers.dart';
import 'package:webapps/constants/style.dart';
import 'package:webapps/controllers/home_controller.dart';
import 'package:webapps/controllers/menu_controller.dart';
import 'package:webapps/controllers/navigation_controller.dart';
import 'package:webapps/helpers/reponsiveness.dart';
import 'package:webapps/layout.dart';
import 'package:webapps/pages/404/error.dart';
import 'package:webapps/pages/authentication/authentication.dart';
import 'package:webapps/widgets/custom_text.dart';
import 'package:webapps/widgets/horizontal_menu_item.dart';
import 'routing/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(NavigationController());
    Get.put(MenuController());
    Get.put(HomeController());
    return GetMaterialApp(
      initialRoute: rootRoute,
      unknownRoute: GetPage(
        name: '/not-found',
        page: () => const PageNotFound(),
        transition: Transition.cupertinoDialog,
      ),
      getPages: [
        GetPage(
            name: rootRoute,
            page: () {
              return SiteLayout();
            },
            transition: Transition.leftToRight),
        GetPage(
            name: authenticationPageRoute,
            page: () => const AuthenticationPage(),
            curve: Curves.easeIn,
            transition: Transition.fadeIn),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Desa Kelembu Kanaika',
      theme: ThemeData(
          primaryColor: ColorConstant.titleColor,
          scaffoldBackgroundColor: light,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black),
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.windows: ZoomPageTransitionsBuilder(),
            },
          ),
          primarySwatch: Colors.amber),
    );
  }
}

class SideMenuItemMobile extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;

  const SideMenuItemMobile(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context)) {
      return HorizontalMenuItemMObile(
        itemName: itemName,
        onTap: onTap,
      );
    } else {
      return HorizontalMenuItemMObile(
        itemName: itemName,
        onTap: onTap,
      );
    }
  }
}

class VertticalMenuItemMobile extends StatelessWidget {
  final String? itemName;
  final VoidCallback? onTap;
  const VertticalMenuItemMobile({Key? key, this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        onHover: (value) {
          value
              ? menuController.onHover(itemName!)
              : menuController.onHover("not hovering");
        },
        child: Obx(() => Container(
              color: menuController.isHovering(itemName!)
                  ? lightGrey.withOpacity(.1)
                  : Colors.transparent,
              child: Row(
                children: [
                  Visibility(
                    visible: menuController.isHovering(itemName!) ||
                        menuController.isActive(itemName!),
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: Container(
                      width: 3,
                      height: 72,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: menuController.returnIconFor(itemName!),
                        ),
                        if (!menuController.isActive(itemName!))
                          Flexible(
                              child: CustomText(
                            text: itemName!,
                            color: menuController.isHovering(itemName!)
                                ? Colors.white
                                : lightGrey,
                          ))
                        else
                          Flexible(
                              child: CustomText(
                            text: itemName,
                            color: Colors.white,
                            size: 18,
                            weight: FontWeight.bold,
                          ))
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
