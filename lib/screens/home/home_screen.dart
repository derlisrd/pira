import 'package:flutter/material.dart';
import 'package:pira/providers/main_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<MainProvider>(context);

    return  Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => mainProvider.logout(),
          child: const Text('Cerrar sesión'),
        ),
      ),
    );
  }
}