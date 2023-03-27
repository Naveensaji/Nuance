import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/login/widget/text.dart';



class ProductNamePriceCart extends StatelessWidget {
  const ProductNamePriceCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Textlogin(text: 'Boat Rockers 51\n ₹1,999', textsize: 20)
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
              onPressed: () {},
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.add_shopping_cart_rounded,
                size: 25,
                color: kBlack,
              )),
        ),
      ],
    );
  }
}
