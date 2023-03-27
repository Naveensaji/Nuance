
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/constants.dart';

class Signbox extends StatelessWidget {
   Signbox({
    Key? key,
    required this.text
  }) : super(key: key);
    final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 250,
      decoration: BoxDecoration(color: kBlack,
      borderRadius: BorderRadius.circular(50)
         ),
      child: ListTile(
        title: Text(text, textAlign: TextAlign.center,style: GoogleFonts.redHatDisplay(textStyle:const TextStyle(fontWeight: FontWeight.w900,letterSpacing: 1,fontSize: 20,color: kWhite,)),),
      ),
    );
  }
}

