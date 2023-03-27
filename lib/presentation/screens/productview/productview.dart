import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/cart/widget/totalprice.dart';
import 'package:nuance/presentation/screens/login/widget/text.dart';
import 'package:nuance/presentation/screens/productview/widget/colorrow.dart';
import 'package:nuance/presentation/screens/productview/widget/pageviewdart.dart';
import 'package:nuance/presentation/screens/productview/widget/productdetails.dart';
import 'package:nuance/presentation/screens/productview/widget/prosductname.dart';


class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundcolor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kWhite,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
          ),
          actions: const [
            Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            kWidth10,
          ],
        ),
        body: Stack(
          children: [SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PageViewWidget(),
          kHeight10,
          const ProductNamePriceCart(),
          kHeight10,
          ProductDiscription(productdescription: 'Renewed boAt Rockerz 510 Bluetooth Wireless On Ear Headphones with Mic (Jazzy Red)'),
          kHeight10,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child:Textlogin(text: 'Colors', textsize: 16)
          ),
          Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children:const [
          SizedBox(
            width: 230,
            height: 50,
            child: Colorrow(),
          ),
        ],
      ),
    )
         
        ],
      ),
    ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: TotalPriceBottomWidget(
                title: 'Total cost',
                totalPrice: '5939',
                selectPayments: 'Payment',
              ),
            )
          ],
        ),
      ),
    );
  }
}
//   // ignore: non_constant_identifier_names
//   SingleChildScrollView ProductFulldetails() {
//     return SingleChildScrollView(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const PageViewWidget(),
//           kHeight10,
//           const ProductNamePriceCart(),
//           kHeight10,
//           ProductDiscription(productdescription: 'Renewed boAt Rockerz 510 Bluetooth Wireless On Ear Headphones with Mic (Jazzy Red)'),
//           kHeight10,
//           Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child:Textlogin(text: 'Colors', textsize: 16)
//           ),
//           Padding(
//       padding: const EdgeInsets.only(left: 20, right: 20),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children:const [
//           SizedBox(
//             width: 230,
//             height: 50,
//             child: Colorrow(),
//           ),
//         ],
//       ),
//     )
         
//         ],
//       ),
//     );
//   }

// }