import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/home/widgets/brandrow.dart';
import 'package:nuance/presentation/screens/home/widgets/itemwidget.dart';
import 'package:nuance/presentation/screens/home/category/rowbrand.dart';
import 'package:nuance/presentation/screens/home/widgets/searchfield.dart';
import 'package:nuance/presentation/widgets/appbarwidget.dart';

import '../../../domain/controller/searchcontroller.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  final TextEditingController _searchontroller = TextEditingController( );
    Searchcontroller searchcontroller = Get.put(Searchcontroller());
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
              kHeight100,
               ItemWidget()
                  ]
            )
          ]
        )
      )
    );
  }
}
