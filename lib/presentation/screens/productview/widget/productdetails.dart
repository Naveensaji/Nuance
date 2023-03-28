import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ProductDiscription extends StatelessWidget {
  ProductDiscription({
    Key? key,
    required this.productdescription,
  }) : super(key: key);

  String? productdescription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Text(
        '${productdescription.toString()}',
        maxLines: 4,
      style: GoogleFonts.redHatDisplay(textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600))
      ),
    );
  }
}