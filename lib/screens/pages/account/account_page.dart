import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions:  [
          IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context,'/login');

          }, icon: const Icon(Icons.logout))
        ],
      ),
      body: const Center(child: Text('ACCOUNT PAGE')),
    );
  }
}