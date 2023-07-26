import 'package:flutter/material.dart';
import 'pages/pages.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex = 0;
  List pages = const[
    HomePage(),
    ConfigPage(),
    AccountPage()
  ];
  void onTap(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: pages[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        onTap: onTap,
        currentIndex: _currentIndex,
        items:
          const[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Config'),
            BottomNavigationBarItem(icon: Icon(Icons.people),label: 'Account'),
          ]
        ),
    );
  }
}