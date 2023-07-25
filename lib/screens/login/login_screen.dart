import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pira/providers/main_provider.dart';
import 'package:pira/services/api.dart';
import 'package:pira/widgets/Buttons/login_button.dart';
import 'package:pira/widgets/TextFields/login_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  
  final userController  = TextEditingController();
  final passController  = TextEditingController();


  

  @override
  Widget build(BuildContext context) {
    final mainProvider = context.watch<MainProvider>();

    void loginUser(){
    String identifier = (userController.text);
    String password = (passController.text);
    Map<String,String> credenciales = {
      "identifier":identifier,
      "password":password
    }; 
    final respuesta = Api().login(credenciales);
    print(respuesta.toString());
    mainProvider.login();
    Navigator.pushNamed(context, '/');
  }

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 320
              ),
              child: Column(
                children:[
                  const SizedBox(height: 50),
                  const Icon(Icons.lock, size: 100,),
                  const SizedBox(height: 20),
                  const Text("Bienvenido devuelta."),
                  const SizedBox(height: 15),
                  LoginField(hintText: "E-mail o usuario", obscureText: false, controller: userController),
                  const SizedBox(height: 10),
                  LoginField(hintText: "Contraseña",obscureText: true, controller: passController),
                  const SizedBox(height: 10),
                  const _Forgot(),
                  const SizedBox(height: 10),
                  LoginButton(onTap: loginUser,),
                  const SizedBox(height: 40),
                  const _Registro()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Forgot extends StatelessWidget {
  const _Forgot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Olvidaste la clave?",
            style: TextStyle(color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}


class _Registro extends StatelessWidget {
  const _Registro({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
              child: Divider(
            thickness: 0.5,
            color: Colors.grey[400],
          )),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Registrate aqui",
              style: TextStyle(color: Colors.green),
            ),
          ),
          Expanded(
              child: Divider(
            thickness: 0.5,
            color: Colors.grey[400],
          )),
        ],
      ),
    );
  }
}
