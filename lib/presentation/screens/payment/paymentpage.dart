import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/domain/model/order_product.dart';
import 'package:nuance/functions/order/add_order.dart';
import 'package:nuance/functions/payment/payment.dart';
import 'package:nuance/presentation/screens/cart/widget/totalprice.dart';
import 'package:nuance/presentation/screens/login/widget/text.dart';
import 'package:nuance/presentation/screens/mainpage/mainpage.dart';
import 'package:nuance/presentation/screens/payment/widget/deliveryaddress.dart';
import 'package:nuance/presentation/screens/payment/widget/paymentile.dart';
import 'package:nuance/presentation/widgets/appbarwidget.dart';

import '../../../domain/model/product_model.dart';



class PaymentPage extends StatelessWidget {
   PaymentPage({super.key,
   required this.product
    });

 final TextEditingController addresscontroller = TextEditingController();
   ProductModel product;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Appbarwidget(appbartitle: 'Payment',arrow: Icons.arrow_back_ios,)),
        backgroundColor: kBackgroundcolor,
        body:  ListView(
          children: 
            [Column(
              children: [
              Padding(
              padding:  const EdgeInsets.only(left: 10, right: 10),
              child: Deliveryaddress(addresscontroller:addresscontroller,),),
              kHeight40,
            Textlogin(text: 'Select the payment you want to use', textsize: 14),kHeight40,
            InkWell(
                onTap: () {
                Pay(product).paymentmodel();
              },
               child: PaymentTile(title: 'Razer Pay', imageUrl: 'https://yt3.ggpht.com/ytc/AMLnZu8hEuwIDjx39XqXih5os_s6PVzgsptnGb8Q1tkKvw=s900-c-k-c0x00ffffff-no-rj', radiobutton: Radio(
                  activeColor:kWhite,
                  value: 1,
                  groupValue: 1,
                  onChanged: (value) {
                  }),),
             ),
               kHeight10,
                InkWell(
                  onTap: () {
                  addorder(orderModel: OrderedProduct(
                  id: product.doc, 
                  name: product.name, 
                  orderquantity: 1, 
                  description: product.description,
                  price: product.price, 
                  images: product.imagelist, 
                  quantity: product.quantity, 
                  connectiontype: product.connectiontype, 
                  isCanceled: false, 
                  isDelivered: false
                    ));
                    Get.defaultDialog(
                    title: 'Your order has been placed successfully',
                    middleText: 'For more details, check Delivery Status',
                    onConfirm:()=> Get.off(()=>MainPage())
                    );
                  },
                  child: PaymentTile(title: 'Cash on delivery', imageUrl: 'https://www.kindpng.com/picc/m/34-349690_free-cash-on-delivery-png-transparent-png.png',
                   radiobutton: Radio(
                  activeColor:kWhite,
                  value: 1,
                  groupValue: 1,
                  onChanged: (value) {
                  }),),
                ),
               kHeight10,
               kHeight10,
               Align(
          alignment: Alignment.bottomCenter,
         // widthFactor: 1.2,
          child: TotalPriceBottomWidget(
            title: 'Total Cost',
            selectPayments: 'Confirm Payment',
            totalPrice: product.price,
            brand: product,
          ))                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                  ],
            ),
          ],
        ),
      ),
    );
  }
}
