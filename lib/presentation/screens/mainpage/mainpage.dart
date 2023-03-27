

import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/cart/cart.dart';
import 'package:nuance/presentation/screens/home/home.dart';
import 'package:nuance/presentation/screens/mainpage/widgets/bottomnavi.dart';
import 'package:nuance/presentation/screens/profile/profile.dart';
import 'package:nuance/presentation/screens/settings/settings.dart';
import 'package:nuance/presentation/screens/wishlist/wishlist.dart';

class MainPage extends StatelessWidget {
   MainPage({super.key});
  final _pages =[
    HomePage(),
    const WishlistPage(),
    CartPage(),
    const SettingsPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
           builder: (context, int index, child) {
             return _pages[index];
           },),
                   ),
     bottomNavigationBar:const Bottomnavwidget(),
     
    );
  }
}
