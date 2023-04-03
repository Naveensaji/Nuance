import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:nuance/presentation/screens/login/login.dart';


import 'signupservices.dart';
const String image= "https://thumbs.dreamstime.com/z/businessman-icon-image-male-avatar-profile-vector-glasses-beard-hairstyle-179728610.jpg";
signupfun(
    {required String username,
    required String userpassword,
    required String useremail,
    required String phone,
   
    }) async {
  await FirebaseAuth.instance
      .createUserWithEmailAndPassword(email: useremail, password: userpassword)
      .then((value) async{
    await signupUser(image: "https://thumbs.dreamstime.com/z/businessman-icon-image-male-avatar-profile-vector-glasses-beard-hairstyle-179728610.jpg",
    useremail: useremail,
    userpassword: userpassword,
    userphone: phone,
    username: username, 
   address:'please add an address'
    );
    log('usercreated');
    Get.offAll(() => LoginPage());
  });
}
