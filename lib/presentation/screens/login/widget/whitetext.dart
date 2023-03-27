

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/core/constants/constants.dart';

class Whitetext extends StatelessWidget {
   Whitetext({
    Key? key,
    required this.text,
    required this.textsize
    
  }) : super(key: key);
  String text;
  double textsize;

  @override
  Widget build(BuildContext context) {
    return Text(text,
            style: GoogleFonts.redHatDisplay(textStyle: TextStyle(fontSize: textsize,fontWeight: FontWeight.w700,
            color: kWhite
            )),);
  }
}