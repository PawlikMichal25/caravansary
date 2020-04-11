import 'package:caravansary/commons/resources/strings.dart';
import 'package:caravansary/home/home_page.dart';
import 'package:flutter/material.dart';

class CaravansaryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.caravansary,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: HomePage(),
    );
  }
}
