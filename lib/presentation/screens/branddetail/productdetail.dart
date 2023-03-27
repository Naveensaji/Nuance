import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/home/widgets/itemwidget.dart';
import 'package:nuance/presentation/widgets/appbarwidget.dart';

class Boatpage extends StatelessWidget {
  const Boatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Appbarwidget(appbartitle: 'Boat')),
        backgroundColor: kBackgroundcolor,
         body: ListView(
           children: 
             [Column(
               children: [
                 kHeight10,
                ItemWidget()
                   ],
             ),
           ],
         ),
      ),
    );
  }
}