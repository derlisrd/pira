

import 'package:dio/dio.dart';
//import 'package:pira/model/info_model.dart';
import 'package:pira/model/login_model.dart';
import 'package:pira/model/movimiento_model.dart';

class Api{
  final dio = Dio();
  
  //Future<Map<String, dynamic>> login(Map<String,String> credencials)async{
  Future<LoginModel> login(Map<String,String> credencials)async{
    try {
      final response = await dio.post(
      'https://api.ruizdiaz.dev/api/auth/local',
      data: credencials,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        })
        );

       return LoginModel(isLogin: true, jwt: response.data['jwt']);
      
    } catch (e) {
      if (e is DioException && e.response != null) {
        return LoginModel(isLogin: false,errorMessage:e.response!.data['error']['message'] );
      } else {
        // Manejar otros errores, como problemas de conexión o timeouts.
        return LoginModel(isLogin: false,errorMessage:e.toString() );
      }
    }
  }

  Future<List<MovimientoModel>> movimientos() async{
    
    try {
      final response = await dio.get(
      'https://api.ruizdiaz.dev/api/movimientos',
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        })
        );
      final res = response.data;
      
      return movimientosFromJson(res['data']);
      
    } catch (e) {
      if (e is DioException && e.response != null) {
        //return LoginModel(isLogin: false,errorMessage:e.response!.data['error']['message'] );
        //print(e.response!.data['error']['message']);
      } else {
        // Manejar otros errores, como problemas de conexión o timeouts.
        //return LoginModel(isLogin: false,errorMessage:e.toString() );
        //print(e.toString());
      }
      return [];
    }
    
  }


  

}