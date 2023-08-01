import 'package:flutter/material.dart';
import 'package:pira/services/api.dart';
import 'package:pira/utils/constants.dart';
import 'package:pira/widgets/Buttons/login_button.dart';
import 'package:pira/widgets/TextFields/login_field.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}




class _LoginScreenState extends State<LoginScreen> {
  final userController  = TextEditingController();
  final passController  = TextEditingController();
  String error = '';
  bool isLoading = false;
  late SharedPreferences prefers;

  @override
  void initState() {
    super.initState();
    initSharePreferences();
  }

  void initSharePreferences() async{
    prefers = await SharedPreferences.getInstance();
  }

  loginUser(BuildContext context) async {
    String identifier = (userController.text.trim());
    String password = (passController.text.trim());
    if (identifier.isEmpty) {
      setState(() => error = 'Complete el usuario');
      return;
    }
    if (password.isEmpty) {
      setState(() => error = 'Complete la contraseña');
      return;
    }
    setState(() {
      error = '';
      isLoading = true;
    });
    final res =
        await Api().login({"identifier": identifier, "password": password});
    if (res.isLogin) {
      setState(() {
        error = '';
      });
      prefers.setString('jwt', res.jwt.toString());
      //Navigator.push(context, MaterialPageRoute(builder: (context)=> const MainScreen()));
      if (context.mounted) {
        Navigator.pushReplacementNamed(context, '/');
      }
    } else {
      setState(() {
        isLoading = false;
        error = res.errorMessage.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Color primary = Theme.of(context).primaryColor;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: isLoading ? Container(alignment: Alignment.center , child: CircularProgressIndicator(color: primary,) ):  SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView (
            child: Column(
            children:[
              const Icon(Icons.lock, size: 100,color: fontDark,),
              const SizedBox(height: 20),
              const Text("Bienvenido devuelta."),
              const SizedBox(height: 15),
              error.isEmpty ? const SizedBox(height: 1) : _MessageError(message: error,),
              const SizedBox(height: 15),
              LoginField(hintText: "E-mail o usuario", autoFocus: true, icon: const Icon(Icons.people), obscureText: false, controller: userController),
              const SizedBox(height: 10),
              LoginField(hintText: "Contraseña", icon:const Icon(Icons.lock),obscureText: true, controller: passController),
              const SizedBox(height: 10),
              const _Forgot(),
              const SizedBox(height: 10),
              LoginButton(onTap: ()=> loginUser(context),),
              const SizedBox(height: 40),
              const _Registro()
            ],
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
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.red),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Center(
        child: Text(message,style:  TextStyle(color:Colors.red[900]),) 
      ),
    );
  }
}

class _Forgot extends StatelessWidget {
  const _Forgot();

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
  const _Registro();

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