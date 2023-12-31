import 'package:flutter/material.dart';
import 'package:pira/providers/info_provider.dart';
import 'package:pira/utils/constants.dart';
import 'package:provider/provider.dart';
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
    return  ChangeNotifierProvider(
      create: (context) => InfoProvider(),
      child: Scaffold(
        body: SafeArea(child: pages[_currentIndex]),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.small(onPressed: (){
          Navigator.pushNamed(context, '/add');
        },
        shape: const CircleBorder(),
        backgroundColor: secondaryDark,
        child: const Icon(Icons.add,color: Colors.white,),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: secondaryDark,
          backgroundColor: Colors.white,
          unselectedItemColor: fontLight,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 0,
          onTap: onTap,
          currentIndex: _currentIndex,
          items:
            const[
              BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Config'),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Account'),
            ]
          ),
      ),
    );
  }
}