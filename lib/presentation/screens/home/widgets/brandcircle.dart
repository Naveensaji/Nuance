
import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/branddetail/productdetail.dart';

class Brandcircle extends StatelessWidget {
  const Brandcircle({
    Key? key,
    required
     this.imagepath
  }) : super(key: key);
final Image? imagepath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const Boatpage() ) );
      },
      child: CircleAvatar(
        backgroundColor: kBlack,
        radius: 25,
        child:imagepath
      ),
    );
  }
}
