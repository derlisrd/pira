
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
  final String? tipo;
  final String? detalles;
  final String? valor;
  final String? fecha;

  ItemsMovimiento({this.tipo,  this.detalles,  this.fecha, this.valor});


}