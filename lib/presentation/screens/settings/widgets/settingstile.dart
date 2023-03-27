
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/core/constants/constants.dart';

class Settingstile extends StatelessWidget {
   Settingstile({
    Key? key,
    required this.leadingicon,
    required this.trailingicon,
    required this.title
  }) : super(key: key);
  IconData leadingicon;
  IconData trailingicon;
  String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadingicon,size: 28,),iconColor: kBlack,
      title: Text(title,style: GoogleFonts.redHatDisplay(
      textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500
      )
          ),),
      trailing: Icon(trailingicon,size: 28,color: kBlack,)
    );
  }
}