import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/functions/profile/editprofile.dart';
import 'package:nuance/domain/model/prodile_model.dart';
import 'package:nuance/presentation/screens/profile/widget/editbutton.dart';

import '../../../../functions/profile/imagepicker.dart';
import '../../login/widget/text.dart';
import 'editformfield.dart';

class EditProfile extends StatefulWidget {
  EditProfile({super.key, 
   required this.name, 
   required this.editimage,
   required this.phone
   });
  final String name;
  final String phone;
   String editimage;

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
 late final namecontroller = TextEditingController(text: widget.name);
 late final phonecontroller = TextEditingController(text: widget.phone);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return  Scaffold(
      backgroundColor: kBackgroundcolor,
      appBar:  AppBar(
      centerTitle: true,
      backgroundColor:kBackgroundcolor ,
      elevation: 0,
      leading:  IconButton(onPressed: (){
      Get.back();
      }, icon: const Icon(Icons.arrow_back_ios_new,color: kBlack,)),
      automaticallyImplyLeading: false,
      title: Text('Edit Profile',style: GoogleFonts.redHatDisplay(
      textStyle: const TextStyle(
      color: Colors.black,
      fontSize: 25,
      fontWeight: FontWeight.w900
      )
    ),),
    ),
        body: 
        ListView(
        children: [
        Column(
               children: [
                CircleAvatar(
                backgroundImage:NetworkImage(widget.editimage),
                radius: 70,
                backgroundColor: kBlack,  ),
                IconButton(onPressed: (){
                     setState(() async {
                     final imageurl = await Images.getimage();
                     widget.editimage = imageurl!;
                    log(imageurl.toString());
                            });
               },
              icon: const Icon(Icons.camera_alt_outlined,color: kBlack,size: 25,)),
               Textlogin(text: 'Naveen Saji', textsize: 19),
               Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Column(
                   children: [
                        EditFormfiled(text: 'Email',controller:namecontroller ,),
                        kHeight100,
                        EditFormfiled(text: 'Phone Number',controller:phonecontroller,),
                        kHeight100,
                        // EditFormfiled(text: 'Address'),
                        kHeight40,
                        GestureDetector(
                        onTap: ()async {
                        await  editprofile(profileModel: ProfileModel(
                        username: namecontroller.text,
                        useremail: currentemail, 
                        userphone: phonecontroller.text,
                        image: widget.editimage, 
                        ));
                        Get.back();
                        },
                        child: const Editbutton(text: 'Submit'))
                     ],
                   ),
                   ),
              ],
            ),
          ],
        ),
    );
  }
}
