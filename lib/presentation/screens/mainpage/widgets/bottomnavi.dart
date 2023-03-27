
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../../core/constants/constants.dart';
ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);


class Bottomnavwidget extends StatelessWidget {
  const Bottomnavwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier, 
      builder:  (context, int newIndex, _){
          return  Container(
     decoration: const BoxDecoration(color: kBlack,
    //  borderRadius: BorderRadius.circular(20)
     ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
        child: GNav(
          selectedIndex: newIndex,
           onTabChange: (index) {
                indexChangeNotifier.value = index;
              },
         backgroundColor:kBlack,
         color:kWhite,
         activeColor:kBlack,
         tabBackgroundColor: kWhite,
         padding: const EdgeInsets.all(13),
         tabs:const[
           GButton(icon:Icons.home,text: 'Home',),
           GButton(icon:Icons.favorite,text: 'Likes',),
           GButton(icon:Icons.shopping_cart,text: 'cart',),
           GButton(icon:Icons.settings,text: 'settings',),
           GButton(icon:Icons.person,text: 'profile',),
           
          ]
         ),
      ),
    );
      });
  }
} 