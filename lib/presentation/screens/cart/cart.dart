import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/cart/widget/cardetile.dart';
import 'package:nuance/presentation/screens/cart/widget/demo.dart';
import 'package:nuance/presentation/screens/cart/widget/totalprice.dart';
import 'package:nuance/presentation/widgets/appbarwidget.dart';


class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);

  final List<String>? cartimage = [
    'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSeWNWRUMRlp0Si8vIzdTu-m_ckqTZLzJpKP3VqVzVkpv71tQiSwEgrJ_15flATmYXg793ZjDFmJ0Y_a6elo9ynpM7f7o3Lk5JI2BQWDJ45LXAeSM7rICEEsG0Hh4FP&usqp=CAE',
    'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcS2rqZdzxX1FkxVCKf1cvvR5Tclwxt_nP1_pZIvkoT3-APlQrcQJtTCuKIpPyl-rVod8J-bAYMpgbszG0eOWN6hbYB2ewGmoBwqwiz5xgBMmmiO-j7xcCoFoUJ9hyoF&usqp=CAE  `',
    'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQBNjeu8vDfyGZrndZ6S_fLOwDPR55Ut0e9PdGE7QbvV3jtUPBl6r0pQ7Dvfz9lBOVz4KUy10Zq062NTqLdFnAgz-Vc-3LQb5IaW3AizdGnopnx1VtMMC1wDdeR3EP0&usqp=CAE',
      'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSeWNWRUMRlp0Si8vIzdTu-m_ckqTZLzJpKP3VqVzVkpv71tQiSwEgrJ_15flATmYXg793ZjDFmJ0Y_a6elo9ynpM7f7o3Lk5JI2BQWDJ45LXAeSM7rICEEsG0Hh4FP&usqp=CAE',
    
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
        child: Appbarwidget(appbartitle: 'My Cart')),
        backgroundColor: kBackgroundcolor,
        body: 
            Stack(
              clipBehavior: Clip.none,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: const [
                    CartListView(),
                    kHeight10,
                    // Align(
                    //   alignment: Alignment.bottomCenter,
                    //   child: Carttotal())
                    
                        ],
                  ),
                
                  ),
                                          ],),
            
       
      ),
    );
  }
}
