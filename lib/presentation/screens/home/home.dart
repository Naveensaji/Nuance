import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/home/widgets/brandrow.dart';
import 'package:nuance/presentation/screens/home/widgets/itemwidget.dart';
import 'package:nuance/presentation/screens/home/widgets/rowband.dart';
import 'package:nuance/presentation/screens/home/widgets/searchfield.dart';
import 'package:nuance/presentation/widgets/appbarwidget.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  final TextEditingController _searchontroller = TextEditingController( );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Appbarwidget(appbartitle: 'Nuance')),
        backgroundColor:kBackgroundcolor,
        body: ListView(
          children: 
            [Column(
              children: [
               Searchfield(searchontroller: _searchontroller),
              kHeight10,
              const Brandrow(),
              kHeight10,
              const Rowbrand(),
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
