import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nuance/core/constants/constants.dart';

import '../../../../domain/model/product_model.dart';


class PageViewWidget extends StatelessWidget {
  const PageViewWidget({
    Key? key, 
    required this.image,
     required this.product,
  }) : super(key: key);

  final String image;
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        color: kWhite,
      ),
      child: PageView.builder(
      itemCount: product.imagelist.length,
        scrollDirection: Axis.horizontal,
         itemBuilder: (context, index) {
            return Image.network(
          product.imagelist[index],
            fit: BoxFit.contain,
          );
         
         },
         
        
      ),
    );
  }
}
