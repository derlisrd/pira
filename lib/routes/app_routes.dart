import 'package:flutter/material.dart';
import 'package:pira/screens/home/home_screen.dart';
import 'package:pira/screens/login/login_screen.dart';
import 'package:pira/screens/main_screen.dart';


class AppRoutes {
  
  Map<String,WidgetBuilder> rutas (BuildContext context){

    return {
      '/':(context) => const MainScreen(),
      '/login':(context) => LoginScreen(),
      '/home' :(context) => const HomeScreen(),
    };
  }  
}