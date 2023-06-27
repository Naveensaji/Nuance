
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

  signupUser({
    required String username, 
  required String userphone, 
  required String useremail, 
  required String userpassword,
  required String image,
  required String address,
  
  }
 )async{
 final User? userid = FirebaseAuth.instance.currentUser;

try{
   await FirebaseFirestore.instance.collection("users")
                          .doc(useremail)
                          .collection('userdetails')
                          .doc('userdetails').
                          set({
                            'username':username,
                            'userPhone':userphone,
                            'userEmail':useremail,  
                            'userPassword':userpassword,
                            'createdAt':DateTime.now(),
                            'userId':userid!.uid,
                            'image':image,
                            'address':address

                          }).then((value) => (value) {
                            FirebaseAuth.instance.signOut();
                           
                        
                          });
}on FirebaseAuthException catch(e){
  log("Error $e");
}
                        

}