

import 'package:flutter/material.dart';

import 'package:pira/model/movimiento_model.dart';
import 'package:pira/services/api.dart';

class InfoProvider with ChangeNotifier{
  

  final List<MovimientoModel> _movimientos = [];
  


  List<MovimientoModel> get movimientos => _movimientos;

  
  Future<List<MovimientoModel>> getListaMovimientos() async{ 
   final response = await Api().movimientos();
   return response;
  }



}