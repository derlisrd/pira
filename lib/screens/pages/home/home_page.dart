import 'package:flutter/material.dart';
import 'package:pira/model/info_model.dart';
import 'package:pira/providers/info_provider.dart';
import 'package:pira/widgets/Card/movimiento.dart';
//import 'package:pira/widgets/Card/movimiento.dart';
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

   late Future< List<ItemsMovimiento>> _itemsMovimiento;
   

   Future<List<ItemsMovimiento>> _getMovimientos() async {
    final provider = Provider.of<InfoProvider>(context, listen: false);
    return await provider.getListaMovimientos();
  }
  
  @override
  void initState() {
    super.initState();
    _itemsMovimiento = _getMovimientos();
  }

  @override
  Widget build(BuildContext context) {
    //final infoProvider = context.watch<InfoProvider>();
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
          FutureBuilder(
            future: _itemsMovimiento,
            builder: (_, snapshot) {

                return ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (_,index){
                return const Movimiento(fecha: 'fecha', valor: "10000", tipo: "salida", detalles: "detalles", icon: Icons.arrow_downward_outlined, colorIcon: Colors.red);
                }
              );
          },)
          ]),
        ),
      ),
    );
  }
}
