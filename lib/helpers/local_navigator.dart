import 'package:flutter/cupertino.dart';
import 'package:webapps/constants/controllers.dart';
import 'package:webapps/routing/router.dart';
import 'package:webapps/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: newsPageDisplayName,
    );
