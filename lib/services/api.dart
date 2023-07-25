

import 'package:dio/dio.dart';

class Api{
  final dio = Dio();
  
  Future<Map<String, dynamic>> login(Map<String,String> credencials)async{
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

      Map<String,dynamic> res = {
        "jwt": response.data['jwt'],
        "response":true,
        "message":"Login exitoso"
      }; 
      return res ;
    
    } catch (e) {
      if (e is DioException && e.response != null) {

        print('Error en el logueo: ${e.response!.data}');
      } else {
        // Manejar otros errores, como problemas de conexión o timeouts.
        print('Error en el logueo: $e');
      }
      Map<String,dynamic> res = {
        "jwt": "",
        "response":false,
        "message":e
      };
      return res;
    }


  }
}