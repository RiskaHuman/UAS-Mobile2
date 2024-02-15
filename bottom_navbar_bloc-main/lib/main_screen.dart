import 'package:bottom_navbar/pages/list_alat.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navbar/favorite_screen.dart';
import 'package:bottom_navbar/home_screen.dart';
import 'package:bottom_navbar/pages/list_alat.dart';
import 'package:bottom_navbar/trend_screen.dart';
import 'package:bottom_navbar/search_screen.dart';

List<Widget> _bodyItems = [
  const HomeScreen(),
  const FavoriteScreen(),
  const TrendScreen(),
  const SearchScreen(),
  const ListAlat(),
];

List<BottomNavigationBarItem> _bottomNavbarItem = [
  const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
  const BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
  const BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: "Trend"),
  const BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
  const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
];

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyItems[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomNavbarItem,
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
