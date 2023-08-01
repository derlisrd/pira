import 'package:flutter/material.dart';

class UltimasText extends StatelessWidget {
  const UltimasText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(vertical: 20),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Ultimos movimientos",style: TextStyle(fontFamily: "Montserrat", fontSize: 16,fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}