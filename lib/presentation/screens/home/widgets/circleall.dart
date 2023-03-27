
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/constants.dart';

class Circleall extends StatelessWidget {
  const Circleall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
     backgroundColor: kBlack,
     radius: 25,
     child: Text('All',style: GoogleFonts.redHatDisplay(textStyle: const TextStyle(
       color: kWhite,fontSize: 17,fontWeight: FontWeight.w800
     )),),
    );
  }
}
