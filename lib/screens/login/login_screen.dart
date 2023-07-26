import 'package:flutter/material.dart';
import 'package:pira/services/api.dart';
import 'package:pira/widgets/Buttons/login_button.dart';
import 'package:pira/widgets/TextFields/login_field.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}




class _LoginScreenState extends State<LoginScreen> {
  final userController  = TextEditingController();

  final passController  = TextEditingController();

  @override
  Widget build(BuildContext context) {

    String error = '';

    void loginUser()async{
    String identifier = (userController.text.trim());
    String password = (passController.text.trim());
    if(identifier.isEmpty){
      setState(() => error = 'Completa usuario o email');
      print('es valcio');
    }
      /* final res = await Api().login({"identifier":identifier,"password":password});
      if(res.isLogin){
        
      } */
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
                  error.isEmpty ? const SizedBox(height: 1) : const SizedBox(height: 60,),
                  const SizedBox(height: 15),
                  LoginField(hintText: "E-mail o usuario", autoFocus: true, icon: const Icon(Icons.people), obscureText: false, controller: userController),
                  const SizedBox(height: 10),
                  LoginField(hintText: "Contraseña", icon:const Icon(Icons.lock),obscureText: true, controller: passController),
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

class _MessageError extends StatelessWidget {
  final String message;
  const _MessageError({ required this.message});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      color: Colors.red[400],
      child: Center(
        child: Text(message,style: const TextStyle(color:Colors.white),) 
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

    final primaryColor = Theme.of(context).primaryColor;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
              child: Divider(
            thickness: 0.5,
            color: Colors.grey[400],
          )),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Registrate aqui",
              style: TextStyle(color: primaryColor),
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