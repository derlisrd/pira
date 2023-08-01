import 'package:flutter/material.dart';
import 'package:pira/widgets/Texts/text_montse.dart';

class Movimiento extends StatelessWidget {
  final Color colorIcon;
  final IconData icon;
  final String tipo;
  final String valor;
  final String detalles;
  final String fecha;
  const Movimiento({ required this.fecha, required this.valor, required this.tipo,required this.detalles, required this.icon, required this.colorIcon, super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12,right: 5,left: 5),
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
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon,size: 16, color: colorIcon,),
           _Datos(tipo: tipo, detalles: detalles,),
           _FechaMonto(valor:valor,fecha:fecha)
        ],
      ),
    );
  }
}

class _Datos extends StatelessWidget {
  final String tipo;
  final String detalles;
  const _Datos({required this.tipo, required this.detalles});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextMontse(texto:tipo, style: const TextStyle(fontSize: 14),),
        TextMontse(texto:detalles,style: const TextStyle(fontSize: 10),)
      ],
    );
  }
}
class _FechaMonto extends StatelessWidget {
  final String valor;
  final String fecha;
  const _FechaMonto({required this.valor ,required this.fecha});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextMontse(texto:valor, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),),
        TextMontse(texto:fecha, style: const TextStyle(fontSize: 12),),
      ],
    );
  }
}
