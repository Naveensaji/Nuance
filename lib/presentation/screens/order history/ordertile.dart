import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/functions/order/add_order.dart';

import '../../../core/constants/constants.dart';

class Orderlist extends StatelessWidget {
  const Orderlist({
    super.key,
    required this.documentSnapshot,
  });

  final QueryDocumentSnapshot<Object?> documentSnapshot;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
          decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(30)),
          child: ListTile(
          leading: SizedBox(
              child: Image.network(
              documentSnapshot['image'][0],
              fit: BoxFit.cover,
            )),
            contentPadding: const EdgeInsets.all(10),
            horizontalTitleGap: 40,
            title: Text(documentSnapshot['name'],
              maxLines: 1, style:  GoogleFonts.redHatDisplay(textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600
            )),),
            subtitle: documentSnapshot['isCanceled'] == false
                ? Container(
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: documentSnapshot['isDeliverd'] == false
                    ? Text('Order Placed', style:  GoogleFonts.redHatDisplay(textStyle: const TextStyle(
                    color: kWhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w600
            )),)
                    : Text('Shipped', style:  GoogleFonts.redHatDisplay(textStyle: const TextStyle(
                   color: kWhite,
                   fontSize: 16,
                    fontWeight: FontWeight.w600
            )),),
                  )
                : Container(
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      'Order Cancelled',
                      style: GoogleFonts.redHatDisplay(textStyle: const TextStyle(
                      color: kWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
            )), 
                    ),
                  ),
                  trailing: IconButton(
                  icon: const Icon(
                  Icons.delete,
                  color: Colors.grey,
                ),
                onPressed: () {
                  removeFromOrder(id: documentSnapshot['id']);
                }),
          )),
    );
  }
}
