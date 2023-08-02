

import 'package:flutter/material.dart';
import 'package:pira/model/info_model.dart';

class InfoProvider with ChangeNotifier{
  

  final List<ItemsMovimiento> _movimientos = [];
  


  List<ItemsMovimiento> get movimientos => _movimientos;

  Future<List<ItemsMovimiento>> getListaMovimientos() async{
    
   Future.delayed( const Duration(seconds: 1));
   return [
     ItemsMovimiento(tipo:'Ingreso',detalles: 'Sueldo',fecha: '2022-02-03',valor: '1200000'), 
     ItemsMovimiento(tipo:'Ingreso',detalles: 'Sueldo',fecha: '2022-02-03',valor: '1200000'), 
    ];
    
    
    
  }



}