import 'package:flutter/material.dart';
import 'package:webapps/pages/home/home.dart';
import 'package:webapps/pages/post/post.dart';
import 'package:webapps/pages/wisata/wisata.dart';
import 'package:webapps/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homePagegeRoute:
      return _getPageRoute(const HomePage());
    case newsPageRoute:
      return _getPageRoute(const PostPage());
    case toursimPlacePageRoute:
      return _getPageRoute(const WisataPage());
    default:
      return _getPageRoute(const HomePage());
  }
}

PageRoute _getPageRoute(Widget child) {
  // return MaterialPageRoute(
  //   fullscreenDialog: true,
  //   builder: (context) => child,
  // );

  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
