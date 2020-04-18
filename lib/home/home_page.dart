import 'package:caravansary/commons/resources/app_colors.dart';
import 'package:caravansary/commons/resources/strings.dart';
import 'package:caravansary/injection/service_location.dart';
import 'package:caravansary/quizzes/quizes_page.dart';
import 'package:caravansary/spices/spices_notifier.dart';
import 'package:flutter/material.dart';

import 'package:caravansary/blends/blends_page.dart';
import 'package:caravansary/recipes/recipes_page.dart';
import 'package:caravansary/settings/settings_page.dart';
import 'package:caravansary/spices/spices_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            BottomNavigationBarItem(
              title: Text(Strings.spicesAndHerbs),
              icon: SvgPicture.asset(
                'assets/images/ic_spices.svg',
                width: 24,
                height: 24,
                color: _selectedIndex == 0 ? Colors.black : Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(Strings.blends),
              icon: SvgPicture.asset(
                'assets/images/ic_blends.svg',
                width: 24,
                height: 24,
                color: _selectedIndex == 1 ? Colors.black : Colors.white,
              ),
            ),
            BottomNavigationBarItem(title: Text(Strings.recipes), icon: Icon(Icons.restaurant_menu)),
            BottomNavigationBarItem(title: Text(Strings.quizzes), icon: Icon(Icons.videogame_asset)),
            BottomNavigationBarItem(title: Text(Strings.settings), icon: Icon(Icons.settings)),
          ],
          onTap: _onItemClicked,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          backgroundColor: AppColors.primaryColor,
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
