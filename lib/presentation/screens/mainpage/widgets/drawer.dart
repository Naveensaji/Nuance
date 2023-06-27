import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/mainpage/mainpage.dart';
import 'package:nuance/presentation/screens/order%20history/orderhistory.dart';
import 'package:nuance/presentation/screens/settings/settings.dart';

import 'Listtile.dart';
import 'drawertop.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kBlack,
      child: SizedBox(
        child: Column(children: [
          const DrawerTop(),
          ListtileWidget(title: 'Home',leadIcon: Icons.home,ontap: () => Get.to(()=>MainPage()),),
          ListtileWidget(title: 'Settings',leadIcon: Icons.settings,ontap: () => Get.to(()=>const SettingsPage())),
          ListtileWidget(title: 'Order History',leadIcon: Icons.production_quantity_limits,ontap: () => Get.to(()=>OrderHistory())),
          ListtileWidget(title: 'About Developer',leadIcon: Icons.info),
          ListtileWidget(title: 'Logout',leadIcon: Icons.logout),
        ],),
      ),
    );
  }
}

