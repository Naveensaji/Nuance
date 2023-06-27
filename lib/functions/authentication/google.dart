
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

googleLogin() async {
    print("googleLogin method Called");
    GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      var reslut = await _googleSignIn.signIn();
      if (reslut == null) {
        return;
      }
      
      final userData = await reslut.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: userData.accessToken, idToken: userData.idToken);
      var finalResult =
          await FirebaseAuth.instance.signInWithCredential(credential);
      print("Result $reslut");
      print(reslut.displayName);
      print(reslut.email);
      print(reslut.photoUrl);

    } catch (error) {
      print(error);
    }
  }

  Future<void> logout() async {
    await GoogleSignIn().disconnect();
    FirebaseAuth.instance.signOut();
  }
// ignore_for_file: unnecessary_null_comparison

// import 'dart:developer';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:nuance/functions/authentication/signupservices.dart';
// import 'package:nuance/presentation/screens/mainpage/mainpage.dart';


// void signinwithgoogle() async {
//   GoogleSignInAccount? googleuser = await GoogleSignIn().signIn();
//   GoogleSignInAuthentication? googleauth = await googleuser?.authentication;

//   AuthCredential credential = GoogleAuthProvider.credential(
//       accessToken: googleauth?.accessToken, idToken: googleauth?.idToken);
//   try {
   
//     UserCredential userCredential =
//         await FirebaseAuth.instance.signInWithCredential(credential);
//          final name = FirebaseAuth.instance.currentUser!.displayName;
//     final email = FirebaseAuth.instance.currentUser!.email;
//     final phone = FirebaseAuth.instance.currentUser!.phoneNumber;
//     await signupUser(
//         image:
//             'https://thumbs.dreamstime.com/z/businessman-icon-image-male-avatar-profile-vector-glasses-beard-hairstyle-179728610.jpg',
//         username: name ?? 'No username',
//         userpassword: '',
//         useremail: email.toString(),
//         userphone: phone ?? 'No phone number',
//         address: 'please add an address');

//     if (userCredential != null) {
//       Get.offAll(() =>  MainPage(),
//           transition: Transition.circularReveal,
//           duration: const Duration(seconds: 2));
//     }
//   } on FirebaseAuthException catch (e) {
//     log('error $e');
//   }
// }



