
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class Containerbrand extends StatelessWidget {
  const Containerbrand({
    super.key,
     required this.brandname,
  });
final String brandname;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kBlack,
    ),
    child: Center(child: Text(brandname,style: const TextStyle(
           color: Colors.grey,
           overflow: TextOverflow.ellipsis,
           fontSize: 12,
           fontWeight: FontWeight.bold),),),
      );
  }
}
