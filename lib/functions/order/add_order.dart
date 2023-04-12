import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nuance/domain/model/order_product.dart';
import 'package:nuance/functions/profile/editprofile.dart';

Future addorder({required OrderedProduct orderModel})async{
  final userdoc = FirebaseFirestore.instance
  .collection('users')
  .doc(currentemail)
  .collection('order')
  .doc(orderModel.id);

  final json = orderModel.toJson();
  await userdoc.set(json);
  log('product has been ordered');
}

  removeFromOrder({required String id}){
    final docProduct = FirebaseFirestore.instance
    .collection('users')
    .doc(currentemail)
    .collection('order')
    .doc(id);

    docProduct.delete();
    log('Product deleted from order list');
  }