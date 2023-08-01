import 'package:flutter/material.dart';
import 'package:pira/widgets/Texts/text_montse.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( title: const TextMontse(texto:'Agregar movimiento',style: TextStyle(fontSize: 14),),),
      body: const Center(child: Text("ADD SCREEN"),),
    );
  }
}