import 'package:caravansary/home/home_page.dart';
import 'package:flutter/material.dart';

class CaravansaryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caravansary',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: HomePage(),
    );
  }
}
