import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Titulo extends StatelessWidget {
  final String label;

  Titulo(this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        children: [
          Image.asset('assets/logo.png'),
          SizedBox(width: 15),
          Text(
            label ?? '',
            style: GoogleFonts.lexendDeca(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
