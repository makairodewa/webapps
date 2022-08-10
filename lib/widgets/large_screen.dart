// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:webapps/helpers/local_navigator.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: localNavigator(),
    );
  }
}
