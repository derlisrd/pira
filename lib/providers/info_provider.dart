
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:pira/model/info_model.dart';

class InfoProvider with ChangeNotifier{
  
  bool _isLoading = true;
  
  String _ingresoTotal = '200000';
  final List<ItemsMovimiento> _movimientos = [];
  
  String get ingresoTotal => _ingresoTotal;
  bool get isLoading => _isLoading;


  List<ItemsMovimiento> get movimientos => _movimientos;

  void leer(){
    _movimientos.add(ItemsMovimiento(tipo: TipoMovimiento.ingreso, detalles: 'Pago de patos', fecha: '2023-04-03', valor: '600.000'));
    notifyListeners();
  }

  void aumentar(){
    final random = Random();
     final int intero =  5 + random.nextInt(100 - 5 + 1);
    _ingresoTotal = intero.toString() ;
    notifyListeners();
  }

}