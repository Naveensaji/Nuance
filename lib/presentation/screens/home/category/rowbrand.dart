
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance/presentation/screens/home/category/brandview.dart';
import 'containerbrand.dart';

class Rowbrand extends StatelessWidget {
  const Rowbrand({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 48,
     child: StreamBuilder<QuerySnapshot>(
     stream:  FirebaseFirestore.instance.collection('categories').snapshots(),
     builder: (context, snapshot) {
  if(snapshot.hasData){
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: ListView.separated(
        separatorBuilder: (context, index) {
        return const SizedBox(width: 5,);},
        itemCount: snapshot.data!.docs.length,
        shrinkWrap: true,
        //physics: ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        QueryDocumentSnapshot documentSnapshot =snapshot.data!.docs[index];
        return  GestureDetector(
          onTap: () {
          Get.to(()=>BrandView(brand:documentSnapshot['name'] ,));},
          child: Containerbrand(brandname:documentSnapshot['name'] ,));
              },),
  );
        }else{
        return const Text('List is empty');
        }
      },)
    );
  }
}
