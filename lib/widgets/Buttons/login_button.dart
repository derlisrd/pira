import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginButton extends StatelessWidget {

  Function()? onTap;
  LoginButton({super.key,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        padding: const EdgeInsets.all(20),
        decoration:  BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8)
        ),
        child: 
          const Center(
            child: 
            Text('LOGIN',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
      
        ),
      ),
    );
  }
}
