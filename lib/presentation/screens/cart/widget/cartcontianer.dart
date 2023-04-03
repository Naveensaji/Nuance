
import 'package:flutter/material.dart';
import 'package:nuance/domain/model/product_model.dart';
import 'package:nuance/presentation/screens/cart/widget/quantitywidget.dart';

import '../../../../core/constants/constants.dart';
import '../../../../functions/cart/addcart.dart';

class containerrow extends StatelessWidget {
   containerrow({
    super.key,
    required this.product,
    required this.index,
  });
ProductModel product;
int index;
  @override
  Widget build(BuildContext context) {
    return Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        kWidth10,
        Container(
          width: 105,
          height: 100,
             decoration: BoxDecoration(
             image:  DecorationImage(
             image: NetworkImage(
            product.imagelist[0]),
             fit: BoxFit.contain,
                 ),
              color: kWhite,
              borderRadius: BorderRadius.circular(20)),
        ),
        kWidth10,
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: SizedBox(
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                 product.name,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: kBlack,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '₹ ${product.price}',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: kBlack,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Column(
        children: [
        IconButton(
              onPressed: () {
              removeFromCart(product: product);
              print("item removed from cart");
                },
                icon: const Icon(
                  Icons.delete,
                  color: kBlack,
                )),
             Quantitywidget()
          ],
        )
      ],
    );
  }
}
