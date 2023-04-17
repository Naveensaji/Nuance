import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nuance/presentation/screens/login/login.dart';
import 'package:nuance/presentation/screens/mainpage/mainpage.dart';
class Signin extends StatelessWidget {
  const Signin({super.key});
  
  get kwhite => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Login",
      //     style: ,
      //   ),
      //   centerTitle: true,
      //   backgroundColor: kappbarcolor,
      // ),
      backgroundColor: kwhite,
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return SingleChildScrollView(
                child: LoginPage(),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text("Error Occured"),
              );
              // ignore: unnecessary_null_comparison
            } else if (snapshot.data != null || snapshot.data!.uid != null) {
              return  MainPage();
            } else {
              return SingleChildScrollView(
                child: LoginPage(),
              );
            }
          }),
    );
  }
}
