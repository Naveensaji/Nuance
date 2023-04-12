
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/domain/model/prodile_model.dart';
import 'package:nuance/presentation/screens/login/widget/text.dart';
import 'package:nuance/presentation/screens/notifation/notification.dart';
import 'package:nuance/presentation/screens/profile/widget/COntainerprofile.dart';
import 'package:nuance/presentation/screens/profile/widget/editbutton.dart';
import 'package:nuance/presentation/screens/profile/widget/editprofile.dart';
import 'package:nuance/presentation/screens/profile/widget/profileimage.dart';
import 'package:nuance/presentation/screens/profile/widget/profiletile.dart';
import 'package:nuance/presentation/widgets/appbarwidget.dart';

import '../../../functions/profile/editprofile.dart';

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
        child:StreamBuilder<List<ProfileModel>>(
          stream:  FirebaseFirestore.instance
            .collection('users')
            .doc(currentemail)
            .collection('userdetails')
            .snapshots()
            .map((event) => event.docs
                .map((e) => ProfileModel.fromJson(e.data()))
                .toList()),
          builder:(context, snapshot) {
            if(snapshot.hasData){
              List<ProfileModel>profile =snapshot.data!;
              return   ListView(
          children: 
            [
              Column(
              children: [
                 kHeight100,
               const Profileimage(),
                kHeight10,
             Textlogin(text: profile[0].username ?? 'no username', textsize: 19),
             kHeight10,
              //  profiletile(controller: _emailController,hinttext: 'User Name',leadingIcon: Icons.mail,),
                Profilecontainer(text: profile[0].username  ?? 'No Username',),
                kHeight10,
                Profilecontainer(text:profile[0].useremail ?? 'No Email',),
                kHeight10,
                Profilecontainer(text:profile[0].userphone ?? 'No Phonenumber',),
                kHeight40,
                 GestureDetector(
                  onTap: () => Get.to(()=> EditProfile(
                  name: profile[0].username ?? '',
                  phone: profile[0].userphone ?? '',
                  editimage: profile[0].image.toString(),
                  )),
                  child: const Editbutton(text: 'Edit',))
                ],
            ),
          ],
        );
            } else {
            return const Center(child: CircularProgressIndicator());
          }
          }, )
      ),
    );
  }
}

