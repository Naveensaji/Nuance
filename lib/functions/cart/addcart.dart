import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:nuance/core/constants/constants.dart';
import '../../domain/model/product_model.dart';
import '../profile/editprofile.dart';

addToCart({required ProductModel product}) async {
  final cart = FirebaseFirestore.instance
      .collection('users')
      .doc(currentemail)
      .collection('cart')
      .doc(product.doc);
  final json = product.toJson();
  await cart.set(json);
  log('Product added to cart');

  Get.snackbar('Item added', 'Product added to cart',
      backgroundColor: kWhite, snackPosition: SnackPosition.BOTTOM);
}

removeFromCart({required ProductModel product}) async {
  final cart = FirebaseFirestore.instance
      .collection('users')
      .doc(currentemail)
      .collection('cart')
      .doc(product.doc);
  await cart.delete();
  log('Item removed from cart');

  Get.snackbar('Item removed', 'Product removed from cart',
      backgroundColor: kRed, snackPosition: SnackPosition.BOTTOM);
}
