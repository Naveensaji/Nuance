import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/model/product_model.dart';
final currentUser = FirebaseAuth.instance.currentUser!.email;

addtowishlist({required ProductModel product})async{
 final wishlist=
  FirebaseFirestore.instance.collection('wishlist')
 .doc(product.doc);

final json = product.toJson();
await wishlist.set(json);
log('addtowishlist');
Get.snackbar('Item added', 'Product added to the wishlist',
backgroundColor: kblue,snackPosition: SnackPosition.BOTTOM
);
}

removefromwishlist({required String doc}){
 final wishlist =
 FirebaseFirestore.instance.collection('users').doc(currentUser)
 .collection('wishlist')
 .doc(doc);

 wishlist.delete();
 log('item removed');
 Get.snackbar('Item removed', 'Product removed from wishlist',
 backgroundColor: kRed);
}