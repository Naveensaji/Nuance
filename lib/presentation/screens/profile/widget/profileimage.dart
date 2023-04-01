
import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/login/widget/text.dart';

class Profileimage extends StatelessWidget {
  const Profileimage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/d18d74aa613a9d18323ee1ef8b64d3aa-removebg-preview (1).jpg'),
            radius: 70,
            backgroundColor: kBlack,
          ),
          //Textlogin(text: 'Naveen Saji', textsize: 19)
        ],
      ),
    );
  }
}
