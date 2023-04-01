import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/model/prodile_model.dart';
import '../profile/editprofile.dart';

Future editaddress({required ProfileModel profileModel}) async {
  final user = FirebaseFirestore.instance
      .collection('users')
      .doc(currentemail)
      .collection('userdetails')
      .doc('userdetails');
  final json = profileModel.toJson();
  await user.update(json);
}