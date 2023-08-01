class InfoModel {
  final String name;
  final String totalBalance;
  final List<Transaction> transacciones;
  final String entradaTotal;
  final String salidaTotal;

  InfoModel(
      {required this.name,
      required this.entradaTotal,
      required this.salidaTotal,
      required this.totalBalance,
      required this.transacciones});
}

enum TypeTransaction { entrada, salida }

enum ItemCategoryType { cobros, gastos, pagos, ingresos, comida }

class Transaction {
  final ItemCategoryType category;
  final TypeTransaction transactionType;
  final String itemCategoryName;
  final String itemName;
  final String monto;
  final String fecha;

  Transaction(
      {required this.itemName,
      required this.category,
      required this.transactionType,
      required this.itemCategoryName,
      required this.monto,
      required this.fecha});
}

 List <Transaction> transacciones = [
  Transaction(itemName: "Pago de loteadora", category: ItemCategoryType.gastos, 
  transactionType: TypeTransaction.salida, itemCategoryName: "Pagos", monto: "120.000 Gs", fecha: '2022-oct-10'),
  Transaction(itemName: "Pago de loteadora", category: ItemCategoryType.gastos, 
  transactionType: TypeTransaction.salida, itemCategoryName: "Pagos", monto: "120.000 Gs", fecha: '2022-oct-10'),
  Transaction(itemName: "Pago de loteadora", category: ItemCategoryType.gastos, 
  transactionType: TypeTransaction.salida, itemCategoryName: "Pagos", monto: "120.000 Gs", fecha: '2022-oct-10')
 ];

InfoModel userdate = InfoModel(
  name: "Derlis Ruiz Diaz", 
  totalBalance:'10000', 
  entradaTotal: '1000',
  salidaTotal: '1000',
  transacciones:  transacciones 
  );