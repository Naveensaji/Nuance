import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/cart/widget/cardetile.dart';
import 'package:nuance/presentation/screens/create/widgets/floatpopbutton.dart';
import 'package:nuance/presentation/widgets/appbarwidget.dart';


class OrderHistory extends StatelessWidget {
  OrderHistory({Key? key}) : super(key: key);

  final List<String>? cartimage = [
    'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSeWNWRUMRlp0Si8vIzdTu-m_ckqTZLzJpKP3VqVzVkpv71tQiSwEgrJ_15flATmYXg793ZjDFmJ0Y_a6elo9ynpM7f7o3Lk5JI2BQWDJ45LXAeSM7rICEEsG0Hh4FP&usqp=CAE',
    'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcS2rqZdzxX1FkxVCKf1cvvR5Tclwxt_nP1_pZIvkoT3-APlQrcQJtTCuKIpPyl-rVod8J-bAYMpgbszG0eOWN6hbYB2ewGmoBwqwiz5xgBMmmiO-j7xcCoFoUJ9hyoF&usqp=CAE  `',
    'https://rukminim1.flixcart.com/image/612/612/xif0q/headphone/x/a/f/-original-imagg8q4shgxjhsp.jpeg?q=70',
  ];

  final List<String>? cartProductName = [
    'Boat Rockers 510',
    "Sony espo 2230",
    'Realme 330',
  ];
  final List<int>? cartProductPrice = [
    1999,
    2200,
    700,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Appbarwidget(appbartitle: 'Order History')),
        backgroundColor: kBackgroundcolor,
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Floatpopbutton(floaticon: Icons.arrow_back_ios_new),
            SingleChildScrollView(
              child: Column(
                children: const [
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
