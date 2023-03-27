
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashtext extends StatelessWidget {
   Splashtext({
    Key? key,
    required this.textsize
  }) : super(key: key);
double textsize;
  @override
  Widget build(BuildContext context) {
    return Text('Nuance',
              style: GoogleFonts.redHatDisplay(
    textStyle: TextStyle(
      color: Colors.black,
      fontSize: textsize,
      fontWeight: FontWeight.w900
    )
              ),
              );
  }
}