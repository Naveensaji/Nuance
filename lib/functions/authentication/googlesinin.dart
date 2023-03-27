
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nuance/functions/authentication/signupfunction.dart';
import 'package:nuance/presentation/screens/mainpage/mainpage.dart';

import 'signupservices.dart';

void signinwithgoogle() async {
  GoogleSignInAccount? googleuser = await GoogleSignIn().signIn();
  GoogleSignInAuthentication? googleauth = await googleuser?.authentication;

  AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleauth?.accessToken, idToken: googleauth?.idToken);
  try  {
    // final name = FirebaseAuth.instance.currentUser!.displayName;
    // final email = FirebaseAuth.instance.currentUser!.email;
    // final phone = FirebaseAuth.instance.currentUser!.phoneNumber;
    UserCredential userCredential =
    await FirebaseAuth.instance.signInWithCredential(credential);
      // signupUser(
      //   image:image,
      //  username: name ?? 'No username',
      //   userpassword: '',
      //   useremail: email.toString(),
      //   userphone: phone ?? 'No phone number');

    // ignore: unnecessary_null_comparison
    if (userCredential != null) {
      Get.offAll(() => MainPage(),
          transition: Transition.circularReveal,
          duration: const Duration(seconds: 1));
    } else {}
  } on FirebaseAuthException catch (e) {
    log('error $e');
  }
}
