import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/widgets/appbarwidget.dart';


class OrderHistory extends StatelessWidget {
  OrderHistory({Key? key}) : super(key: key);
 @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Appbarwidget(appbartitle: 'Order History',arrow: Icons.arrow_back_ios_new,)),
        backgroundColor: kBackgroundcolor,
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                    
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
