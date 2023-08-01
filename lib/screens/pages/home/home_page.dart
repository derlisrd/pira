import 'package:flutter/material.dart';
import 'package:pira/widgets/Card/movimiento.dart';
import 'package:pira/widgets/Card/salidaentrada_card.dart';
import 'package:pira/widgets/Texts/balance_text.dart';
import 'package:pira/widgets/Texts/ultimas_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            const BalanceText(),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SalidaEntradaCard(
                color: Colors.white,
                icono: Icons.arrow_upward_outlined,
                monto: '10.000.000 Gs',
                tipo: 'INGRESO',
                background: Colors.green[500],
              ),
              const SizedBox(
                width: 10,
              ),
              SalidaEntradaCard(
                color: Colors.white,
                icono: Icons.arrow_downward_outlined,
                monto: '- 9.000 Gs.',
                tipo: 'SALIDA',
                background: Colors.red[400],
              )
            ],
          ),
          const UltimasText(),
          const Movimiento(),
          const Movimiento(),
          const Movimiento(),
          const Movimiento(),
          const Movimiento(),
          const Movimiento(),
          const Movimiento(),
          const Movimiento(),
          ]),
        ),
      ),
    );
  }
}
