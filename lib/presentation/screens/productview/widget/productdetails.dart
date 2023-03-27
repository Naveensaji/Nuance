import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';


class ProductDiscription extends StatelessWidget {
  ProductDiscription({
    Key? key,
    required this.productdescription,
  }) : super(key: key);

  String? productdescription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Text(
        '${productdescription.toString()}',
        maxLines: 3,
        style: const TextStyle(
            overflow: TextOverflow.ellipsis,
            color: kBlack,
            fontSize: 15,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}