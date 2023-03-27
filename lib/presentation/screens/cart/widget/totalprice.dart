import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/payment/paymentpage.dart';


class TotalPriceBottomWidget extends StatelessWidget {
  const TotalPriceBottomWidget(
      {Key? key, this.title, this.totalPrice, this.selectPayments})
      : super(key: key);

  final String? title;
  final String? totalPrice;
  final String? selectPayments;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180   ,
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
                    '$Title',
                    style:GoogleFonts.redHatDisplay(textStyle:  const TextStyle(
                        color: kWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      '₹ $totalPrice',
                      style: GoogleFonts.redHatDisplay(textStyle:  const TextStyle(
                          color: kWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),)
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Shipping charge',
                    style:GoogleFonts.redHatDisplay(textStyle:  const TextStyle(
                        color: kWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 45),
                    child: Text(
                      '₹50',
                      style: GoogleFonts.redHatDisplay(textStyle:  const TextStyle(
                          color: kWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),)
                    ),
                  ),
                ],
              ),
            ),
            kHeight40,
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const PaymentPage())),
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 253, 253, 253), borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    '$selectPayments',
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
    );
  }
}