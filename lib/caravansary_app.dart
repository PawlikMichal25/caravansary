import 'package:caravansary/commons/resources/strings.dart';
import 'package:caravansary/commons/resources/styles.dart';
import 'package:caravansary/home/home_page.dart';
import 'package:flutter/material.dart';

class CaravansaryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.caravansary,
      theme: Styles.theme,
      home: HomePage(),
    );
  }
}
