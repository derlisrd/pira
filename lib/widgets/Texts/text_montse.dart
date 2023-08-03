import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextMontse extends StatelessWidget {
  final String texto;
  final TextStyle? style;
  const TextMontse({ this.style, required this.texto, super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(texto, style: GoogleFonts.montserrat( textStyle: style ));
  }
}