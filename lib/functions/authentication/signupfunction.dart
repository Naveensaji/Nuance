import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
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
    await addUser();
    Get.offAll(() => LoginPage());
  });
}

Future addUser() async {
  final email = FirebaseAuth.instance.currentUser!.email;

  log(email.toString());

  final docUser = FirebaseFirestore.instance.collection('users').doc(email);

  Map<String, dynamic> map = {
    'email': email,
  };
  await docUser.set(map);
  log('new user created and details added to databse');
}
