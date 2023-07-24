

import 'package:dio/dio.dart';

class Api{
  final dio = Dio();
  
  Future<void> login(Map<String,String> credencials)async{
    try {
      final response = await dio.post(
      'http://localhost:1330/api/auth/local',
      data: credencials,
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        })
        );
      return response.data['jwt'];
    
    } catch (e) {
      if (e is DioException && e.response != null) {
        print('Error en el logueo: ${e.response!.data}');
      } else {
        // Manejar otros errores, como problemas de conexión o timeouts.
        print('Error en el logueo: $e');
      }
    }


  }
}