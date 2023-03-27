import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/home/widgets/itemwidget.dart';
import 'package:nuance/presentation/widgets/appbarwidget.dart';



class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(preferredSize: Size.fromHeight(60),
         child: Appbarwidget(appbartitle: 'Wishlist')),
        backgroundColor: kBackgroundcolor,
        body: ListView(
          children: 
            [Column(
              children: [
               ItemWidget()
                  ],
            ),
          ],
        ),
      ),
    );
  }
}