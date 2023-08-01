import 'package:flutter/material.dart';

class Movimiento extends StatelessWidget {
  const Movimiento({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5,right: 5,left: 5),
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(4,4),
          blurRadius: 8
        )
        ]
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.arrow_downward,size: 18,),
          _Datos(),
          _FechaMonto()
        ],
      ),
    );
  }
}

class _Datos extends StatelessWidget {
  const _Datos();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Gasto', style: TextStyle(fontSize: 16),),
        Text('Compra de zapatos',style: TextStyle(fontSize: 12),)
      ],
    );
  }
}
class _FechaMonto extends StatelessWidget {
  const _FechaMonto();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('-25.000 Gs.', style: TextStyle(fontSize: 12),),
        Text('2023-10-10', style: TextStyle(fontSize: 12),),
      ],
    );
  }
}
