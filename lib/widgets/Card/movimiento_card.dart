import 'package:flutter/material.dart';
import 'package:pira/model/movimiento_model.dart';
import 'package:pira/widgets/Texts/text_montse.dart';

class MovimientoCard extends StatelessWidget {

  final MovimientoModel mov ;

  const MovimientoCard({ required this.mov, super.key});

  @override
  Widget build(BuildContext context) {

    final icono = mov.tipo=='ingreso'? Icons.arrow_upward : Icons.arrow_downward;

    return ListTile(
      leading: Icon(icono),
      title: TextMontse(texto: mov.tipo.toString()),
      subtitle: TextMontse(texto: mov.detalles.toString()),
      trailing: Row(
        children: [
          TextMontse(texto: mov.valor.toString()),
          TextMontse(texto: mov.fecha.toString())
        ]
        ),
    ) ;
  }
}