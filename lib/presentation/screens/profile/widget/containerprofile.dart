
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/core/constants/constants.dart';

class Profilecontainer extends StatelessWidget {
  const Profilecontainer({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: kBlack,
      borderRadius: BorderRadius.circular(50)),
      height: 52,
     width: 300,
     child: Center(child: Text(text,style: GoogleFonts.redHatDisplay(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey)))),
    );
  }
}