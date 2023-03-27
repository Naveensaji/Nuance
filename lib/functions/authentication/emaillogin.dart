import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:nuance/presentation/screens/mainpage/mainpage.dart';

emaillogin({required String useremail, required String userpassword}) async {
  try {
    final User? firebaseuser = (await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: useremail, password: userpassword))
        .user;
    if (firebaseuser != null) {
      Get.offAll(MainPage (),
          transition: Transition.circularReveal,
          duration: const Duration(seconds: 3));
    } else {}
  } on FirebaseAuthException catch (e) {
    // ignore: avoid_print
    print('error $e');
  }
}
