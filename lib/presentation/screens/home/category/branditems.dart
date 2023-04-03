import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/domain/model/product_model.dart';

import '../../productview/productview.dart';

class BrandItems extends StatelessWidget {
   BrandItems({super.key,
    required this.brandname});

  @override
final String brandname;
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8),
    child: StreamBuilder<List<ProductModel>>
    (stream: FirebaseFirestore.instance
              .collection('categories')
              .doc(brandname)
              .collection(brandname)
              .snapshots()
              .map((snapshot) => snapshot.docs
                  .map((e) => ProductModel.fromJson(e.data()))
                  .toList()),
      builder: (context, snapshot) {
          if(snapshot.hasData){
          return GridView.builder(
      itemCount:snapshot.data!.length ,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.72,
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 1.0,
      ),
         itemBuilder: (context, index) {
         List<ProductModel> documentSnapshot = snapshot.data!;
         return GestureDetector(
         onTap: () {
          Get.to(()=>ProductView(product:documentSnapshot[index]));
          },
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
            color:   kWhite, borderRadius: BorderRadius.circular(20)),
            child: Column(
               children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  GestureDetector(
                      onTap: () {},
                      child: const Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Container(
                    child: Image.network(
                    documentSnapshot[index].imagelist[0],
                    width: 100,
                    height: 100,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child:  Text(
                  documentSnapshot[index].name,
                   style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child:  Text(
                  "₹${documentSnapshot[index].price}",
                        style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true);
        }else{
        return const Text('No data in this product');
        }
      },)
    );
  }
}