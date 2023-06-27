import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/constants.dart';

class DrawerTop extends StatelessWidget {
  const DrawerTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        color: kWhite
      ),
      child: Column(
        children: [
          Center(
            child: Container(
                      width: 250,
                      height: 100,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/9e9e5292-ca1c-400f-a6a6-5425fd0b2705-removebg-preview (1).jpg'),
                              fit: BoxFit.contain)),
                    ),
          ),
          Text('NUANCE',style:GoogleFonts.redHatDisplay(textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),)
          ,const SizedBox(width: 20,)
        ],
      ),
      );
  }
}