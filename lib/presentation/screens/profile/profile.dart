
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/notifation/notification.dart';
import 'package:nuance/presentation/screens/profile/widget/profileimage.dart';
import 'package:nuance/presentation/screens/profile/widget/profiletile.dart';
import 'package:nuance/presentation/widgets/appbarwidget.dart';

class ProfilePage extends StatelessWidget {
   ProfilePage({super.key});
    final TextEditingController _nameController = TextEditingController( );
    final TextEditingController _emailController = TextEditingController( );
    final TextEditingController _numberController = TextEditingController( );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: kBackgroundcolor,
    appBar: const PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: Appbarwidget(appbartitle: 'Profile',)),
      body:SafeArea(
        child: ListView(
          children: 
            [
              Column(
              children: [
                 kHeight40,
               const Profileimage(),
                kHeight40,
               profiletile(controller: _nameController,hinttext: 'Full Name',trailingIcon: Icons.edit,leadingIcon: Icons.person,),
               kHeight10,
                profiletile(controller: _emailController,hinttext: 'E-mail id',leadingIcon: Icons.mail,),
                kHeight10,
               GestureDetector(
                onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const NotificationPage() ) );
                },
                child: profiletile(controller: _numberController,hinttext: 'Phone number',trailingIcon: Icons.edit,leadingIcon: Icons.phone,))
                ],
            ),
          ],
        ),
      ),
    );
  }
}

