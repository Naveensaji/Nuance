import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance/domain/model/product_model.dart';
import 'package:nuance/presentation/screens/home/widgets/addwishlist.dart';
import 'package:nuance/presentation/screens/productview/productview.dart';

import '../../../../domain/controller/searchcontroller.dart';

class ItemWidget extends StatelessWidget {
  ItemWidget({Key? key}) : super(key: key);
    Searchcontroller searchcontroller = Get.put(Searchcontroller());
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    return StreamBuilder<List<ProductModel>>(
      stream: FirebaseFirestore.instance
      .collection('search')
      .snapshots()
      .map(
            (snapshot) => snapshot.docs
                .map((e) => ProductModel.fromJson(e.data()))
                .toList()),
      builder: (context, snapshot) {
        if(snapshot.hasError){
          return const Center(
            child: Text('Error occuered'),
          );
        }
        else if(snapshot.data == null){
          return const Center(
            child: Text('Empty'),
          );
        }
        else if(snapshot.connectionState == ConnectionState.waiting){
          return const Center(
            child:CircularProgressIndicator(),
          );
        }else{
          return Padding(padding: const EdgeInsets.all(15),
          child: GetBuilder<Searchcontroller>(
            init: Searchcontroller(),
            builder: (searchcontroller){
              return  GridView.builder(
      itemCount: searchcontroller.searchlist.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.72,
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 1.0,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> ProductView(product:searchcontroller.searchlist[index] ,) ) );
          },
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
            color:  const Color.fromARGB(255, 255, 255, 255), borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconWishlist(documentSnapshot: searchcontroller.searchlist, index: index)
                  ],
                ),
                Image.network(
                  searchcontroller
                  .searchlist[index]
                  .imagelist[0],
                  width: 150,
                  height: 100,
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child:  Text(
                    searchcontroller.searchlist[index].name,
                    maxLines: 1,
                    style: const TextStyle(
                        color: Colors.black,
                        overflow: TextOverflow.ellipsis,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child:  Text(
                   "₹${searchcontroller.searchlist[index].price}",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
            }),
          );
        }
      },);
  }
}
