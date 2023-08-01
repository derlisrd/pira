import 'package:flutter/material.dart';

class BalanceText extends StatelessWidget {
  const BalanceText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(vertical: 20),
      child:  Column(
        children: [
          Text("Gs. 10.000",style: TextStyle(fontFamily: "Montserrat", fontSize: 18,fontWeight: FontWeight.w700),),
          Text("Balance general")
        ],
      ),
    );
  }
}