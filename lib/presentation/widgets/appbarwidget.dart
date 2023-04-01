
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/constants.dart';

class Appbarwidget extends StatelessWidget {
  const Appbarwidget({
    Key? key,
   required this.appbartitle,
  }) : super(key: key);
final String appbartitle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor:kBackgroundcolor ,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Text(appbartitle,style: GoogleFonts.redHatDisplay(
      textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w900
      )
        ),),
    );
  }
}