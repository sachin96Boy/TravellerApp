import 'package:flutter/material.dart';
import 'package:my_traveller_app/screens/addItemScreen.dart';
import 'package:my_traveller_app/screens/menuScreen.dart';
import 'package:my_traveller_app/screens/notificationScreen.dart';
import 'package:my_traveller_app/screens/searchScreen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final int _selectedIndex = 0;
  final List _pages = [
    const MenuScreen(),
    const AddItemScreen(),
    const SearchScreen(),
    const NotificationScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: "AddItem",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
        ],
      ),
    );
  }
}
