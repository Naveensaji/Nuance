// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/login/login.dart';
import 'package:nuance/presentation/screens/login/widget/containerforgot.dart';
import 'package:nuance/presentation/screens/login/widget/resetpass.dart';
import 'package:nuance/presentation/screens/splashs/widgets/imagecontainer.dart';
import 'package:nuance/presentation/screens/splashs/widgets/splashtext.dart';
import 'package:nuance/presentation/widgets/textfield.dart';

class ForgotPassword extends StatelessWidget {
   ForgotPassword({super.key});
  TextEditingController forgotPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       
        backgroundColor: kWhite,
        body: SingleChildScrollView(
          child:Stack(
            children: [
               Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Imagecontainer(),
                Splashtext(textsize: 32),
                kHeight40,
                const Resetpass(),
                kHeight10,
                Textfieldcontainer(leadingicon: Icons.email,
                 title: 'Email',
                 controller: forgotPasswordController,
                 hide: false,),
                kHeight10,
                GestureDetector(
                  onTap: ()async {
                    var forgotEmail=forgotPasswordController.text.trim();
                 try{
                await  FirebaseAuth.instance.sendPasswordResetEmail(email:forgotEmail).then((value) {
                    print('Email send');
                    Get.off(()=>LoginPage());
                  });
                 }on FirebaseAuthException catch(e){
                  print('Error $e');
                 }
                               },
                  child: const Forgotpasswordcontainer()),

              ],
            ),
          ),
            ],
          )
        ),
      ),
    );
  }
}
