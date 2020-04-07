import 'package:flutter/material.dart';

import 'package:caravansary/blends/blends_page.dart';
import 'package:caravansary/recipes/recipes_page.dart';
import 'package:caravansary/settings/settings_page.dart';
import 'package:caravansary/spices/spices_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const _tabs = [
    SpicesPage(),
    BlendsPage(),
    RecipesPage(),
    SettingsPage(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(title: Text('Spices & Herbs'), icon: Icon(Icons.fastfood)),
          BottomNavigationBarItem(title: Text('Blends'), icon: Icon(Icons.category)),
          BottomNavigationBarItem(title: Text('Recipes'), icon: Icon(Icons.restaurant_menu)),
          BottomNavigationBarItem(title: Text('Settings'), icon: Icon(Icons.settings)),
        ],
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.amber,
        onTap: _onItemClicked,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  void _onItemClicked(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
