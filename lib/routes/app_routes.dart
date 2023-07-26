import 'package:flutter/material.dart';
import 'package:pira/screens/screens.dart';

class AppRoutes {
  
  Map<String,WidgetBuilder> rutas (BuildContext context){

    return {
      '/':(context) => const MainScreen(),
      '/add': (context) => const AddScreen(),
      '/login':(context) => const LoginScreen(),
      '/home' :(context) => const HomeScreen(),
    };
  }  
}