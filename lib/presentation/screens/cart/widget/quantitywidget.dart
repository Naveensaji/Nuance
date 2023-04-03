

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class Quantitywidget extends StatelessWidget {
   Quantitywidget({
    
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
          color: const Color(0xff1F222B),
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              onPressed: () {
                
              },
              icon: const Icon(
            Icons.remove,
            color: kWhite,
              )),
          const Text(
            "1",
            style: TextStyle(color: kWhite),
          ),
          IconButton(
              onPressed: () {
    
              },
              icon: const Icon(
    Icons.add,
    color: kWhite,
              )),
        ],
      ),
    );
  }
}
