import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/home/category/branditems.dart';
import 'package:nuance/presentation/widgets/appbarwidget.dart';

class BrandView extends StatelessWidget {
  const BrandView({super.key, 
  required this.brand});
  final String brand;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return  Scaffold(
      backgroundColor: kBackgroundcolor,
      appBar:  PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Appbarwidget(appbartitle: brand)),
        body: ListView(
          children: [
            Column(
              children: [
                BrandItems(brandname: brand,)
              ],
            ),
          ],
        ),
    );
  }
}