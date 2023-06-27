import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/home/widgets/brandrow.dart';
import 'package:nuance/presentation/screens/home/widgets/itemwidget.dart';
import 'package:nuance/presentation/screens/home/category/rowbrand.dart';
import 'package:nuance/presentation/screens/home/widgets/searchfield.dart';
import 'package:nuance/presentation/screens/mainpage/widgets/drawer.dart';
import 'package:nuance/presentation/widgets/appbarwidget.dart';

import '../../../domain/controller/searchcontroller.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  
    Searchcontroller searchcontroller = Get.put(Searchcontroller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Scaffold(
        appBar:  AppBar(
      centerTitle: true,
      leading: InkWell(
        onTap: () =>const DrawerWidget(),
        child: const Icon(Icons.menu,color: kBlack,)),
      backgroundColor:kBackgroundcolor ,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Text('Nuance',style: GoogleFonts.redHatDisplay(
      textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w900
      )
        ),),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.more_vert,color: kBlack,),
        )],
    ),
        backgroundColor:kBackgroundcolor,
        body: ListView(
        children: 
            [
              Column(
              children: [
              Searchfield(),
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
