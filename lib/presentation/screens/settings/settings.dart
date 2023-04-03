import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/functions/authentication/google.dart';
import 'package:nuance/presentation/screens/login/login.dart';
import 'package:nuance/presentation/screens/notifation/notification.dart';
import 'package:nuance/presentation/screens/order%20history/orderhistory.dart';
import 'package:nuance/presentation/screens/settings/widgets/settingstile.dart';
import 'package:nuance/presentation/widgets/appbarwidget.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(preferredSize: Size.fromHeight(60), 
        child:Appbarwidget(appbartitle: 'Settings')),
        backgroundColor: kBackgroundcolor,
        body: Column(
            children: [
            GestureDetector(
              onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const NotificationPage() ) );
              },
              child: 
            Settingstile(leadingicon: Icons.notifications, trailingicon: Icons.arrow_forward_ios, title: 'Notifications')),
            kHeight10,
            Settingstile(leadingicon: Icons.lock, trailingicon: Icons.arrow_forward_ios_sharp, title: 'Privacy Policy'),
            kHeight10,
            Settingstile(leadingicon: Icons.info, trailingicon: Icons.arrow_forward_ios_sharp, title: 'Help Centre'),
            kHeight10,
            GestureDetector(
              onTap: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>OrderHistory() ) );
              },
              child: Settingstile(leadingicon: Icons.card_travel, trailingicon: Icons.arrow_forward_ios_sharp, title: 'Order History')),
            kHeight10,
            Settingstile(leadingicon: Icons.bookmark, trailingicon: Icons.arrow_forward_ios_sharp, title: 'Terms and conditions'),
            kHeight10,
            Settingstile(leadingicon: Icons.people_rounded, trailingicon: Icons.arrow_forward_ios_sharp, title: 'Invite Friends'),
            kHeight10,
            GestureDetector(
              onTap: () async{
               // logout();
               await Get.to(()=>LoginPage());
              },
              child: Settingstile(leadingicon: Icons.logout, trailingicon: Icons.arrow_forward_ios_sharp, title: 'Log Out')),
           
          ],
        ),
      ),
    );
  }
}
