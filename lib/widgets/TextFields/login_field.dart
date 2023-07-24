import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const LoginField({super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color:Colors.grey[500],fontWeight: FontWeight.w400),
          filled: true,
          fillColor: Colors.grey.shade100,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green)),
        ),
      ),
    );
  }
}
