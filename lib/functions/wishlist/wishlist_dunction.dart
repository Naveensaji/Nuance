import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/model/product_model.dart';

import '../profile/editprofile.dart';
final currentUser = FirebaseAuth.instance.currentUser!.email;

addtowishlist({required ProductModel product})async{
 final wishlist=
  FirebaseFirestore.instance .collection('users') .doc(currentemail)
  .collection('wishlist')
 .doc(product.doc);

final json = product.toJson();
await wishlist.set(json);
log('addtowishlist');
Get.snackbar('Item added', 'Product added to the wishlist',
backgroundColor: kWhite,snackPosition: SnackPosition.BOTTOM
);
}

removefromwishlist({required String doc})async{
 final wishlist =
 FirebaseFirestore.instance.collection('users')
 .doc(currentemail)
 .collection('wishlist')
 .doc(doc);

 await wishlist.delete();
 log('item removed');
 Get.snackbar('Item removed', 'Product removed from wishlist',
 backgroundColor: kRed,snackPosition: SnackPosition.BOTTOM);
}