import 'package:flutter/material.dart';
import 'package:pira/widgets/Texts/text_montse.dart';

class UltimasText extends StatelessWidget {
  const UltimasText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(vertical: 20),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextMontse(texto:"Ultimos movimientos",style: TextStyle(fontFamily: "Montserrat", fontSize: 16,fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}