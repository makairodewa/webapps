import 'package:flutter/material.dart';
import 'package:webapps/helpers/local_navigator.dart';
import 'package:webapps/helpers/reponsiveness.dart';
import 'package:webapps/widgets/large_screen.dart';
import 'package:webapps/widgets/side_menu.dart';

import 'widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
          largeScreen: const LargeScreen(), smallScreen: localNavigator()),
    );
  }
}
