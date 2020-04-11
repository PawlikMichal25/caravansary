import 'package:caravansary/commons/resources/strings.dart';
import 'package:caravansary/injection/service_location.dart';
import 'package:caravansary/quizzes/quizes_page.dart';
import 'package:caravansary/spices/spices_notifier.dart';
import 'package:flutter/material.dart';

import 'package:caravansary/blends/blends_page.dart';
import 'package:caravansary/recipes/recipes_page.dart';
import 'package:caravansary/settings/settings_page.dart';
import 'package:caravansary/spices/spices_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _spicesNotifier = sl.get<SpicesNotifier>();

  static const _tabs = [
    SpicesPage(),
    BlendsPage(),
    RecipesPage(),
    QuizzesPage(),
    SettingsPage(),
  ];
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _spicesNotifier.init();
  }

  @override
  void dispose() {
    _spicesNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: _spicesNotifier),
      ],
      child: Scaffold(
        body: _tabs[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(title: Text(Strings.spicesAndHerbs), icon: Icon(Icons.fastfood)),
            BottomNavigationBarItem(title: Text(Strings.blends), icon: Icon(Icons.category)),
            BottomNavigationBarItem(title: Text(Strings.recipes), icon: Icon(Icons.restaurant_menu)),
            BottomNavigationBarItem(title: Text(Strings.quizzes), icon: Icon(Icons.videogame_asset)),
            BottomNavigationBarItem(title: Text(Strings.settings), icon: Icon(Icons.settings)),
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
      ),
    );
  }

  void _onItemClicked(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
