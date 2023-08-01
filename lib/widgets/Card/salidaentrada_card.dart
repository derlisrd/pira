import 'package:flutter/material.dart';

import 'package:pira/utils/constants.dart';
import 'package:pira/widgets/Texts/text_montse.dart';

class SalidaEntradaCard extends StatelessWidget {
  final Color color;
  final Color? background;
  final String monto;
  final String tipo; // Ingreso Salida
  final IconData icono;
  const SalidaEntradaCard(
      {super.key,
      this.background,
      required this.color,
      required this.monto,
      required this.tipo,
      required this.icono});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: background, borderRadius: BorderRadius.circular(defaultRadius), 
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.4),
          offset: const Offset(2,5),
          blurRadius: 5
        )
      ] ),
      height: 70,
      width: 130,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextMontse(style: style, texto: tipo),
              TextMontse(style: style, texto: monto),
            ],
          ),
          Icon(
            icono,
            size: 20,
            color: color,
          )
        ],
          ),
      ));
  }
}

const style =  TextStyle( color: Colors.white, fontWeight: FontWeight.bold, fontSize: 11, fontFamily: 'montserrat' );