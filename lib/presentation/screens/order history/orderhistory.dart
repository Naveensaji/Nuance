import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/order%20history/ordertile.dart';
import 'package:nuance/presentation/widgets/appbarwidget.dart';

import '../../../functions/profile/editprofile.dart';


class OrderHistory extends StatelessWidget {
  OrderHistory({Key? key}) : super(key: key);
 @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Appbarwidget(appbartitle: 'Order History',arrow: Icons.arrow_back_ios_new,)),
        backgroundColor: kBackgroundcolor,
        body: StreamBuilder<QuerySnapshot>(
        stream:FirebaseFirestore.instance
              .collection('users')
              .doc(currentemail)
              .collection('order')
              .snapshots(),   
        builder: (context, snapshot) {
          if(snapshot.hasData){
            log('snapshot has data');
            final orderList = snapshot.data!;
            return ListView.separated(
            itemBuilder: (context, index) {
            QueryDocumentSnapshot documentSnapshot =snapshot.data!.docs[index];
            return Orderlist(documentSnapshot: documentSnapshot);
            }, 
            separatorBuilder: (context, index) => const SizedBox(height: 20,), 
            itemCount: orderList.docs.length);
          }else{
           return const Align(
           alignment: Alignment.center,
           child: CircularProgressIndicator(),
            );
          }
        },)
      ),
    );
  }
}
