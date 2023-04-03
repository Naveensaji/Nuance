import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/constants.dart';

class Carttotal extends StatelessWidget {
  const Carttotal({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
      height: 150   ,
      width: 360,
      decoration: const BoxDecoration(
          // Color(0xff35383F)
          color: Color.fromARGB(255, 40, 39, 39),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          )),
      child: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8,),
        child: Column(
          children: [
            kHeight10,
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style:GoogleFonts.redHatDisplay(textStyle:  const TextStyle(
                        color: kWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      '₹1999',
                      style: GoogleFonts.redHatDisplay(textStyle:  const TextStyle(
                          color: kWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),)
                    ),
                  ),
                ],
              ),
            ),
            kHeight10,
            GestureDetector(
              onTap: () {
                // Get.to(()=>PaymentPage(product: brand,)
                // );
              },
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 253, 253, 253), borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'Payment',
                    style: GoogleFonts.redHatDisplay(textStyle:  const TextStyle(
                      color: kBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),)
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    )
    );
  }
}