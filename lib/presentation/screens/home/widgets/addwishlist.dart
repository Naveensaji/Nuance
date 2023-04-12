import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/functions/profile/editprofile.dart';
import 'package:nuance/functions/wishlist/wishlist_dunction.dart';


import '../../../../domain/model/product_model.dart';

class IconWishlist extends StatelessWidget {
  const IconWishlist(
      {super.key, required this.documentSnapshot, required this.index});

  final List<ProductModel> documentSnapshot;
  final int index;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('users')
            .doc(currentemail)
            .collection('wishlist')
            .snapshots()
            .map((snapshot) => snapshot.docs
                .map((e) => ProductModel.fromJson(e.data()))
                .toList()),
        builder: (context, snapshot) {
        if (snapshot.hasData) {
        final wishlist = snapshot.data;
        return IconButton(
                icon: Icon(
                wishlist!
                        .where(
                          (item) =>
                              item.name == documentSnapshot[index].name,
                        )
                        .isEmpty
                    ? Icons.favorite_outline_rounded
                    : Icons.favorite,
                size: 20,
                color: Colors.black,
              ),
              onPressed: () async {
                wishlist
                        .where(
                          (item) =>
                              item.name == documentSnapshot[index].name,
                        )
                        .isNotEmpty
                    ? await removefromwishlist(
                        doc: documentSnapshot[index].name)
                    : await addtowishlist(
                        product: documentSnapshot[index]);
              },
            );
          } else {
            return const SizedBox();
          }
        });
  }
}
