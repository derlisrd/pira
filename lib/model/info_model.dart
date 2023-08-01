
enum TipoMovimiento {
  ingreso,
  salida
}


class InfoModel{
  final String balanceGeneral;
  final String ingresoTotal;
  final String salidaTotal;
  //final List<ItemsMovimiento> itemsMovimiento;


  InfoModel({ required this.balanceGeneral, required this.ingresoTotal, required this.salidaTotal});


}

class ItemsMovimiento {
  final TipoMovimiento tipo;
  final String detalles;
  final String valor;
  final String fecha;

  ItemsMovimiento({required this.tipo, required this.detalles, required this.fecha, required this.valor});
}