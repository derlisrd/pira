import 'package:flutter/material.dart';
import 'package:pira/widgets/Texts/text_montse.dart';

class BalanceText extends StatelessWidget {
  const BalanceText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(vertical: 20),
      child:  Column(
        children: [
          TextMontse(texto:"Gs. 10.000",style: TextStyle(fontFamily: "Montserrat", fontSize: 18,fontWeight: FontWeight.w700),),
          TextMontse(texto:"Balance general",style: TextStyle( fontSize: 12),),
        ],
      ),
    );
  }
}