
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/core/constants/constants.dart';

class Googlefield extends StatelessWidget {
  const Googlefield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 230,
        decoration: BoxDecoration(color: kBlack,
          borderRadius: BorderRadius.circular(50)
         ),
      child: ListTile(
        leading: Image.asset('assets/images/afdasd.jpg',height: 30,width: 25,),
      title: Text('Sign in with Google',textAlign: TextAlign.left,style: GoogleFonts.redHatDisplay(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: kWhite))),
      ),
    );
  }
}