import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/domain/model/product_model.dart';
import 'package:nuance/presentation/screens/cart/widget/quantitywidget.dart';

import '../../../../functions/profile/editprofile.dart';
import 'cartcontianer.dart';


class CartListView extends StatelessWidget {
  const CartListView({
    Key? key,
  
   
  }) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ProductModel>>(
      stream:  FirebaseFirestore.instance
                .collection('users')
                .doc(currentemail)
                .collection('cart')
                .snapshots()
                .map((snapshot) => snapshot.docs
                    .map((e) => ProductModel.fromJson(e.data()))
                    .toList()),
      builder: (context, snapshot) {
        if(snapshot.hasData){
        List<ProductModel> docSnapshot = snapshot.data!;
          return ListView.separated(
      separatorBuilder: (context, index) => kHeight40,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return containerrow(
          product: docSnapshot[index],
          index: index,
        );
      },
      itemCount:snapshot.data!.length,
    );
        }else{
          return const Text('No items added in cart');
        }
      },
      );

  }
}
