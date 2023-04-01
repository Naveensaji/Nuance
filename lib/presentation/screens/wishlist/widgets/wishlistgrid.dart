import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nuance/functions/profile/editprofile.dart';
import 'package:nuance/functions/wishlist/wishlist_dunction.dart';
import 'package:nuance/model/product_model.dart';

import '../../productview/productview.dart';

class WishlistGridview extends StatelessWidget {
  WishlistGridview({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(16),
    child: StreamBuilder<List<ProductModel>>(
       stream: FirebaseFirestore.instance
               .collection('users')
               .doc(currentemail)
              .collection('wishlist')
              .snapshots()
              .map((snapshot) => snapshot.docs
                  .map((e) => ProductModel.fromJson(e.data()))
                  .toList()),
      builder: (context, snapshot) {
        if(snapshot.hasData){
          return GridView.builder(
      itemCount: snapshot.data!.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 1.0,
      ),
      itemBuilder: (context, index) {
        List<ProductModel> documentSnapshot = snapshot.data!;
        return GestureDetector(
          onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ProductView(product: documentSnapshot[index],) ) );
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
                    IconButton(onPressed: (){
                      removefromwishlist(doc: documentSnapshot[index].doc);
                    },
                     icon: Icon(Icons.favorite,
                     color: Colors.grey.shade400,))
                  ],
                ),
                Container(
                  //margin: EdgeInsets.all(10),
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
                      overflow: TextOverflow.ellipsis,
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child:  Text(
                    documentSnapshot[index].price,
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
      // childAspectRatio: 0.80,
      physics: const NeverScrollableScrollPhysics(),
      // crossAxisCount: 2,
      shrinkWrap: true,
      // children: [],
    );
        }else{
          return const Text('No data');
        }
      },
      ),
    );
  }
}
