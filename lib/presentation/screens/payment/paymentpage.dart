import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/cart/widget/totalprice.dart';
import 'package:nuance/presentation/screens/login/widget/text.dart';
import 'package:nuance/presentation/screens/payment/widget/deliveryaddress.dart';
import 'package:nuance/presentation/screens/payment/widget/paymentile.dart';
import 'package:nuance/presentation/widgets/appbarwidget.dart';



class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Appbarwidget(appbartitle: 'Payment')),
        backgroundColor: kBackgroundcolor,
        body:  ListView(
          children: 
            [Column(
              children: [
                 const Padding(
            padding:  EdgeInsets.only(left: 10, right: 10),
            child: Deliveryaddress(),
          ),kHeight40,
          Textlogin(text: 'Select the payment you want to use', textsize: 14),kHeight40,
          PaymentTile(title: 'Razer Pay', imageUrl: 'https://yt3.ggpht.com/ytc/AMLnZu8hEuwIDjx39XqXih5os_s6PVzgsptnGb8Q1tkKvw=s900-c-k-c0x00ffffff-no-rj', radiobutton: Radio(
                activeColor:kWhite,
                value: 1,
                groupValue: 1,
                onChanged: (value) {
                }),),
               kHeight10,
                PaymentTile(title: 'Cash on delivery', imageUrl: 'https://www.kindpng.com/picc/m/34-349690_free-cash-on-delivery-png-transparent-png.png',
                 radiobutton: Radio(
                activeColor:kWhite,
                value: 1,
                groupValue: 1,
                onChanged: (value) {
                }),),
               kHeight10,
               kHeight10,
            const   Align(
          alignment: Alignment.bottomCenter,
         // widthFactor: 1.2,
          child: TotalPriceBottomWidget(
            title: 'Total Cost',
            selectPayments: 'Confirm Payment',
            totalPrice: '5000',
          ))                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                  ],
            ),
          ],
        ),
      ),
    );
  }
}
