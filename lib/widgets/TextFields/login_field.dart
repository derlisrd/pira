import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final Icon icon;
  final bool autoFocus;
  const LoginField({super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.icon,
    this.autoFocus = false
  });

  @override
  Widget build(BuildContext context) {

    final primaryColor = Theme.of(context).primaryColor;

    return Container(
      decoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black12,blurRadius: 20)
        ]
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        autofocus: autoFocus,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: icon,
          prefixIconColor: primaryColor,
          hintText: hintText,
          hintStyle: TextStyle(color:Colors.grey[500],fontWeight: FontWeight.w400),
          filled: true,
          fillColor: Colors.grey.shade100,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder:  OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor)),
        ),
      ),
    );
  }
}
