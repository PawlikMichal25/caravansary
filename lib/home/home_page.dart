import 'package:flutter/material.dart';
import 'package:spices_herbs/spices_herbs.dart';
import 'package:blends/blends.dart';
import 'package:recipes/recipes.dart';
import 'package:settings/settings.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const _tabs = [
    SpicesHerbsPage(),
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
