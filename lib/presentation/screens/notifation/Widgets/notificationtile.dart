
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/core/constants/constants.dart';

class Notificationtile extends StatelessWidget {
   Notificationtile({
    Key? key,
    required this.title
  }) : super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
          height: 50,
          width: 325,
          decoration: BoxDecoration(color: kBlack,
          borderRadius: BorderRadius.circular(50)
          ),
          child: ListTile(
            leading: const Icon(Icons.notifications,color: kWhite,),
            title:Text(title,
            // ignore: prefer_const_constructors
            style: GoogleFonts.redHatDisplay(textStyle: TextStyle(
              color: kWhite,
              fontSize: 16,
              fontWeight: FontWeight.w600
            )),
            )
          ),
        ),
    );
  }
}