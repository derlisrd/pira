import 'package:flutter/material.dart';
import 'package:pira/widgets/Buttons/login_button.dart';
import 'package:pira/widgets/TextFields/login_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  
  final userController  = TextEditingController();
  final passController  = TextEditingController();


  void loginUser(){
    print(userController.text);
    print(passController.text);
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:  SafeArea(
        child: Center(
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Olvidaste la clave?",style: TextStyle(color: Colors.grey[700]),),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              LoginButton(onTap: loginUser,),
              const SizedBox(height: 40),
              Row(
                children: [
                  Divider(thickness: 0.5, color: Colors.grey[400],),
                  const Text("No tienes cuenta? Registrate"),
                  Divider(thickness: 0.5, color: Colors.grey[400],),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}