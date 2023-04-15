import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/core/constants/constants.dart';


class PaymentTile extends StatelessWidget {
  const PaymentTile(
      {Key? key,required this.title, required this.imageUrl,required this.radiobutton})
      : super(key: key);
  final String title;
  final String? imageUrl;
  final Widget? radiobutton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
        width: 350,
        child: ListTile(
            contentPadding: const EdgeInsets.all(5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: NetworkImage(imageUrl.toString())),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 23, 24, 25)),
            ),
            tileColor:const Color.fromARGB(255, 41, 42, 44),
            title: Text(
              title,
              style: GoogleFonts.redHatDisplay(textStyle:  const TextStyle(
                    color: kWhite,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),)
            ),
            trailing: radiobutton),
      ),
    );
  }
}
