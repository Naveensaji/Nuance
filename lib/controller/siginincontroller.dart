import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
  Siginincontroller siginincontroller = Get.put(Siginincontroller());
class Siginincontroller extends GetxController{
  final GlobalKey<FormState>loginFormKey=GlobalKey<FormState>();
  final GlobalKey<FormState>signupFormKey= GlobalKey<FormState>();
  late TextEditingController emailcontroller,passwordcontroller,phonecontroller,namecontroller;
  var email = '';
  var phone = '';
  var name = '';
  var password = '';

  @override
  void onInit(){
    emailcontroller=TextEditingController();
    passwordcontroller=TextEditingController();
    phonecontroller=TextEditingController();
    namecontroller=TextEditingController();
    super.onInit();
  }
 @override
  void onReady(){
  super.onReady();
 }
 
    String? validateemail(String value){
      if(!GetUtils.isEmail(value)){
        return 'Please enter a valid email';
      }
      return null;
    }

    String? validatepassword(String value){
      if(value.length<6){
        return 'Enter atleast 6 characters';
      }
      return null;
    }

      String? validatephone(String value){
      if(value.length<10){
        return 'Enter a 10 digit number';
      }
      return null;
    }
     String? validatename(String value){
      if(!GetUtils.isUsername(value)){
        return 'Enter a valid username';
      }
      return null;
    }

    void checkLogin(){
      final isvalid = loginFormKey.currentState!.validate();
      if(!isvalid){
     return log(name);
      }
      loginFormKey.currentState!.save();
    }

      void checkSignup() {
    final isvalid = signupFormKey.currentState!.validate();
    if (!isvalid) {
      return log(name);
    }
    signupFormKey.currentState!.save();
  }

}