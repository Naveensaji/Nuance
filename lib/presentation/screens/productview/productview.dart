import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/model/product_model.dart';
import 'package:nuance/presentation/screens/cart/widget/totalprice.dart';
import 'package:nuance/presentation/screens/login/widget/text.dart';
import 'package:nuance/presentation/screens/productview/widget/pageviewdart.dart';
import 'package:nuance/presentation/screens/productview/widget/productdetails.dart';
import 'package:nuance/presentation/screens/productview/widget/prosductname.dart';


class ProductView extends StatelessWidget {
  const ProductView({Key? key,
   required this.product
   }) : super(key: key);

  final ProductModel product;

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
                 Get.back();
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
           PageViewWidget(product: product,image: product.imagelist[0]),
          kHeight10,
           ProductNamePriceCart(name: product.name,price: product.price,),
          kHeight10,
          ProductDiscription(productdescription:product.description),
          kHeight100,
          kHeight10,
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child:Textlogin(text: 'Connection Type : ', textsize: 17),
              ),
              Textlogin(text: product.connectiontype, textsize: 16)
            ],
          ),
   
         
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
