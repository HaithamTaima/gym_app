import 'package:activity4/bn_screens/about_screen.dart';
import 'package:activity4/bn_screens/messages_screen.dart';
import 'package:activity4/models/bn_screens.dart';
import 'package:flutter/material.dart';

import 'bn_screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<BnScreen>_bnScreen=<BnScreen>[
    const BnScreen(title: 'Home', widget: HomeScreen()),
    const BnScreen(title: 'About', widget: AboutScreen()),
    const BnScreen(title: 'Messages', widget: MessagesScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF26273B),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0), // here the desired height
        child: AppBar(
          title: Text(_bnScreen[_currentIndex].title),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,        ),
      ),
      body: _bnScreen[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,

        showSelectedLabels: true,
        showUnselectedLabels: true,

        backgroundColor:  Color(0xFF26273B),        elevation: 10,

        // fixedColor: Colors.pink,
        selectedItemColor: Colors.deepOrange,
        selectedIconTheme: IconThemeData(color: Colors.deepOrange.shade700),
        selectedFontSize: 14,
        selectedLabelStyle:
        TextStyle(letterSpacing: 2),

        unselectedItemColor: Colors.grey,
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        unselectedFontSize: 12,
        unselectedLabelStyle:
        TextStyle(fontWeight: FontWeight.w300, letterSpacing: 1),




        items: const [
          BottomNavigationBarItem(
              // backgroundColor: Colors.pink,
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home'),
          BottomNavigationBarItem(
              // backgroundColor: Colors.green,

              icon: Icon(Icons.favorite_border_outlined),
              activeIcon: Icon(Icons.favorite),
              label: 'About'),
          BottomNavigationBarItem(
            // backgroundColor: Colors.blue,
            icon: Icon(Icons.mark_chat_read_outlined),
            activeIcon: Icon(Icons.mark_chat_read_rounded),
            label: 'Messages',
          ),
        ],
      ),
    );
  }
}
