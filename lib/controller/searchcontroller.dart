import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance/model/product_model.dart';

class Searchcontroller extends GetxController{
  var name ='';
  late TextEditingController textcontroller;
  List<ProductModel> productList=[];
  RxList<ProductModel>searchlist =<ProductModel>[].obs;

  
  getproductlist() async {
    productList = await FirebaseFirestore.instance
        .collection('search')
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((e) => ProductModel.fromJson(e.data())).toList())
        .first;

    searchlist.value = productList;
  }

      @override
    void onInit() {
    textcontroller = TextEditingController();
    getproductlist();
    super.onInit();
  }


   @override
    void dispose() {
    textcontroller = TextEditingController();
    super.dispose();
  }

   search(String value) {
   searchlist.value = productList
        .where((element) =>
           element.name.toLowerCase().contains(value.trim().toLowerCase()))
        .toList();

    update();
  }

}