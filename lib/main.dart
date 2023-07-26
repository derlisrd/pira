import 'package:flutter/material.dart';
import 'package:pira/routes/app_routes.dart';

void main() {
  runApp(const  MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pira pire',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        primaryColor: Colors.grey,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: AppRoutes().rutas(context),
    );
  }
}
