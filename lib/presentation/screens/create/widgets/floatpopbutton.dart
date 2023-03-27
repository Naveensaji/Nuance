
import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';

class Floatpopbutton extends StatelessWidget {
   Floatpopbutton({
    Key? key,
    required this.floaticon
  }) : super(key: key);
 IconData floaticon;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 10,
      top: 5,
      child: FloatingActionButton(
        onPressed: (){
            Navigator.of(context).pop();
      },
      backgroundColor: kBlack,
      child: Icon(floaticon,color: kWhite,),),
    );
  }
}