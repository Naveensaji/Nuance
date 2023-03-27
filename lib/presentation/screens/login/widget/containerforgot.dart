
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/constants.dart';

class Forgotpasswordcontainer extends StatelessWidget {
  const Forgotpasswordcontainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 160,
      decoration: BoxDecoration(color: kBlack,
      borderRadius: BorderRadius.circular(50)
         ),
      child: ListTile(
        title: Text('Forgot Password', textAlign: TextAlign.center,style: GoogleFonts.redHatDisplay(textStyle:TextStyle(fontWeight: FontWeight.w600,letterSpacing: 1,fontSize: 12,color: Colors.grey.shade300,)),),
      ),
    );
  }
}