
import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';

class Floatsettingsbutton extends StatelessWidget {
   Floatsettingsbutton({
    Key? key,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -50,
      top: 5,
      child: FloatingActionButton(onPressed: (){
            Navigator.of(context).pop();
      },
      backgroundColor: kBlack,
      child: const Icon(Icons.settings_outlined,color: kWhite,),),
    );
  }
}