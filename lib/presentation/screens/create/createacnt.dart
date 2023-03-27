
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/functions/authentication/signupfunction.dart';
import 'package:nuance/presentation/screens/login/widget/signbox.dart';
import 'package:nuance/presentation/screens/login/widget/text.dart';
import 'package:nuance/presentation/screens/splashs/widgets/imagecontainer.dart';
import 'package:nuance/presentation/widgets/textfield.dart';

import '../../../controller/siginincontroller.dart';

class CreateAccount extends StatelessWidget {
   CreateAccount({super.key});

final User? currentuser = FirebaseAuth.instance.currentUser;
   Siginincontroller signincontroller = Get.put(Siginincontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: kWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: siginincontroller.signupFormKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Center(
              child: Column(
                children: [
                 const Imagecontainer(),
                  Textlogin(text: 'Create an account', textsize: 25),
                  kHeight10,
                 Textfieldcontainer(leadingicon: Icons.person,
                  title: 'Username',
                  validator: (value) {
                 return siginincontroller.validatename(value!);},
                 onsave: (value) {
                  siginincontroller.name=value!;},
                  controller: siginincontroller.namecontroller,
                  hide: false,
                 ),
                 kHeight10,
                 Textfieldcontainer(leadingicon: Icons.phone,
                 title: 'Phone',
                 validator: (value) {
                 return siginincontroller.validatephone(value!);},
                 onsave: (value) {
                  siginincontroller.phone=value!;},
                 controller: siginincontroller.phonecontroller,
                 hide: false,
                 keyboardtype: TextInputType.phone,),
                 kHeight10,
                 Textfieldcontainer(leadingicon: Icons.email,
                 title: 'Email',
                 validator: (value) {
                 return siginincontroller.validateemail(value!);},
                 onsave: (value) {
                  siginincontroller.email=value!;},
                 controller: siginincontroller.emailcontroller, 
                 hide: false,
                 keyboardtype: TextInputType.emailAddress,),
                 kHeight10,
                 Textfieldcontainer(leadingicon: Icons.lock, 
                 trailingicon: Icons.remove_red_eye,
                 title: 'Password',
                 validator: (value) {
                 return siginincontroller.validatepassword(value!);},
                 onsave: (value) {
                  siginincontroller.password=value!;},
                 controller: siginincontroller.passwordcontroller, 
                  hide: true,
                 ),
                 kHeight10,
                 kHeight100,
                  GestureDetector(
                    onTap: () async {
                    signincontroller.checkSignup();
                    await signupfun(
                        phone: signincontroller.phone,
                        useremail: signincontroller.email,
                        username: signincontroller.name,
                        userpassword: signincontroller.password);
                  },
                    child: Signbox(text: 'Sign Up')),
                kHeight10,
                kHeight100,
                  Textlogin(text: 'Already have an account ?  Sign In', textsize: 16),
                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
