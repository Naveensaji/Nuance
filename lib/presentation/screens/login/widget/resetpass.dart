
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/constants.dart';

class Resetpass extends StatelessWidget {
  const Resetpass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: 
      Column(
        children: [
       Text('Reset Your Password',style: GoogleFonts.redHatDisplay(textStyle: const TextStyle(fontSize: 22,fontWeight: FontWeight.w900)),),
       kHeight10,
       Text("Enter the email associated with\nyour account and we'll send an\nemail with instructions to reset\nyour password",
       style: GoogleFonts.redHatDisplay(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,letterSpacing: 1)),
       )
        ],
      ),
    );
  }
}
