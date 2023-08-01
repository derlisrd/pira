import 'package:flutter/material.dart';
import 'package:pira/providers/info_provider.dart';
import 'package:pira/widgets/Card/movimiento.dart';
import 'package:pira/widgets/Card/salidaentrada_card.dart';
import 'package:pira/widgets/Texts/balance_text.dart';
import 'package:pira/widgets/Texts/ultimas_text.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    final infoProvider = context.watch<InfoProvider>();
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
          Text(infoProvider.ingresoTotal),
          ElevatedButton(onPressed: (){
            infoProvider.leer();

          }, child: const Text('PRESIONAR')),
          const UltimasText(),
          const Movimiento(fecha: '2000', valor: '2000', tipo: "Ingreso", detalles: "sueldazo", icon: Icons.arrow_upward_outlined, colorIcon: Colors.green)
          ]),
        ),
      ),
    );
  }
}
