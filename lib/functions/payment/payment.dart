
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance/domain/model/order_product.dart';
import 'package:nuance/domain/model/product_model.dart';
import 'package:nuance/functions/order/add_order.dart';
import 'package:nuance/presentation/screens/mainpage/mainpage.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Pay{
  
  final ProductModel brand;

  Razorpay razorpay = Razorpay();
  Pay(this.brand);
  paymentmodel(){
   var options = {
      'key': 'rzp_test_MyXVHaNEb64CTG',
      'amount': (int.parse(brand.price) + 200) * 100,
      'name': 'Nuance',
      'description': int.parse(brand.price) + 200 * 100,
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'prefill': {'contact': '7902836828', 'email': 'naveensaji246@gmail.com'},
      'external': {
        'wallets': ['paytm']
      }
    };
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentErrorResponse);
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccessResponse);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWalletSelected);
    razorpay.open(options);
  }
  void showAlertDialog (BuildContext context, String title, String message){
    Widget contiueButton = ElevatedButton(
    onPressed: (){}, 
    child: const Text('continue'));

    AlertDialog alert = AlertDialog(
       title: Text(title),
       content: Text(message),
       actions: [contiueButton],
    );

    showDialog(
    context: context, 
    builder:  (BuildContext context) {
        return alert;
      },
    );
  }

  void handlePaymentErrorResponse(
    PaymentFailureResponse response, BuildContext context) {
    showAlertDialog(context, "Payment Failed",
    "Code: ${response.code}\nDescription: ${response.message}\nMetadata:${response.error.toString()}");
  }


    void handlePaymentSuccessResponse(PaymentSuccessResponse response)async{
      
      log(response.toString());

      await addorder(orderModel: OrderedProduct(
      id: brand.doc, 
      name: brand.name, 
      orderquantity: 1, 
      description: brand.description,
      price: brand.price, 
      images: brand.imagelist, 
      quantity: brand.quantity, 
      connectiontype: brand.connectiontype, 
      isCanceled: false, 
      isDelivered: false));
      Get.defaultDialog(
      title: 'Your Order has been placed',
      middleText: 'For more details,\n check Delivery Status',
      onConfirm: () => Get.off(() => MainPage()),
    );
    }

   void handleExternalWalletSelected(
    ExternalWalletResponse response, BuildContext context) {
    showAlertDialog(
    context, "External Wallet Selected", "${response.walletName}");
  }
 
}