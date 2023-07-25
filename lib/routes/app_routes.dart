import 'package:flutter/material.dart';
import 'package:pira/screens/home/home_screen.dart';
import 'package:pira/screens/login/login_screen.dart';


class AppRoutes {
  
  Map<String,WidgetBuilder> rutas (BuildContext context){

    return {
      '/login':(context) => LoginScreen(),
      '/home' :(context) => const HomeScreen(),
    };
  }  
}