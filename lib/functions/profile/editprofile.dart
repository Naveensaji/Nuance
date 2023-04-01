import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../model/prodile_model.dart';


final currentemail = FirebaseAuth.instance.currentUser!.email;
Future editprofile({required ProfileModel profileModel}) async {
  final user = FirebaseFirestore.instance
      .collection('users')
      .doc(currentemail)
      .collection('userdetails')
      .doc('userdetails');
  final json = profileModel.toJson();
  await user.update(json);
}
