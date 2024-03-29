import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/domain/model/product_model.dart';
import 'package:nuance/functions/cart/addcart.dart';



class ProductNamePriceCart extends StatelessWidget {
  const ProductNamePriceCart({
    Key? key, 
    required this.name,
    required this.price,
     required this.product,
  }) : super(key: key);
  final String name;
    final String price;
 final ProductModel product;
  @override
  Widget build(BuildContext context) {
     return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
                width: 250,
                child: Text(
                   name,
                  style: GoogleFonts.redHatDisplay(textStyle: const TextStyle(fontSize: 25,fontWeight: FontWeight.w900))
                ),
              ),
              kHeight100,
              Text(
                 '₹  $price',
                style: GoogleFonts.redHatDisplay(textStyle: const TextStyle(fontSize: 17,fontWeight: FontWeight.w900))
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
              onPressed: () {     
                    addToCart(product:product );
                       },
              icon: const Icon(
                Icons.add_shopping_cart_rounded,
                size: 25,
                color: kBlack,
              )),
        ),
      ],
    );
  }
}
