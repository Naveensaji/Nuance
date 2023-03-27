import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/widgets/appbarwidget.dart';
import 'Widgets/notificationtile.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Appbarwidget(appbartitle: 'Notification')),
      backgroundColor: kBackgroundcolor,
        body: Stack(
          children: [
            Column(
              children: [
                      Column(
                        children: [
                          Notificationtile(title: 'Your order has been placed',),
                          kHeight10,
                          Notificationtile(title: 'Your order has been shipped'),
                          kHeight10,
                          Notificationtile(title: 'Packaged reached you near hub'),
                          kHeight10,
                          Notificationtile(title: 'Your order is delviered')
                        ],
                      )
              ],
            ),
          ],
        )
      ),
    );
  }
}
