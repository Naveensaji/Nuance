// ignore_for_file: unused_local_variable, avoid_print


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/domain/controller/siginincontroller.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/functions/authentication/emaillogin.dart';
import 'package:nuance/presentation/screens/create/createacnt.dart';
import 'package:nuance/presentation/screens/login/widget/forgotpassword.dart';
import 'package:nuance/presentation/screens/login/widget/googlefield.dart';
import 'package:nuance/presentation/screens/login/widget/signbox.dart';
import 'package:nuance/presentation/screens/login/widget/text.dart';
import 'package:nuance/presentation/screens/splashs/widgets/imagecontainer.dart';
import 'package:nuance/presentation/widgets/textfield.dart';

import '../../../functions/authentication/google.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});
     Siginincontroller signincontroller = Get.put(Siginincontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: kWhite,
      body: SingleChildScrollView(
        child: Form(
          key: siginincontroller.loginFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Center(
            child: Column(
              children: [
               const Imagecontainer(),
               Text('Welcome to Audiozic',
               style: GoogleFonts.redHatDisplay(textStyle:const TextStyle(fontSize: 28,fontWeight: FontWeight.w800)),),
                kHeight10,
                Textlogin(text: 'Login to your account',textsize: 20,),
                kHeight40,
                Textfieldcontainer(
                keyboardtype:TextInputType.emailAddress ,
                leadingicon: Icons.mail,
                trailingicon: Icons.remove_red_eye_outlined,
                title: 'Email',
                validator: (value) {
                        return siginincontroller.validateemail(value!);},
                        onsave: (value) {
                        siginincontroller.email=value!;},
                        controller: siginincontroller.emailcontroller,
                        hide: false,),
                kHeight10,
                Textfieldcontainer(leadingicon: Icons.lock,
                trailingicon: Icons.remove_red_eye,
                keyboardtype: TextInputType.visiblePassword,
                title: 'Password',
                validator: (value) {
                     return siginincontroller.validatepassword(value!);},
                     onsave: (value) {
                     siginincontroller.password=value!;},
                     controller: siginincontroller.passwordcontroller, 
                      hide: true,),
                kHeight10,
                GestureDetector(onTap: ()  async {
                    siginincontroller.checkLogin();

                        await emaillogin(
                        useremail: siginincontroller.email,
                        userpassword: siginincontroller.password);
                  },
                child: Signbox(text: 'Sign In')),
                kHeight10,
                GestureDetector(
                  onTap: () {
                  Get.to(()=>ForgotPassword());
                  },
                  child: Textlogin(text: 'Forgot you password?',textsize: 12 )),
                kHeight10,
                GestureDetector(
                  onTap: () {
                  Get.to(()=>CreateAccount());
                  },
                child: Textlogin(text: "Create an account",textsize: 18 )),
                kHeight10,
                GestureDetector(
                  onTap: () {
                 googleLogin();
                
                 
                  },
                  child: const Googlefield())
                ],
            ),
          ),
        ),
      )
    );
  }
}

