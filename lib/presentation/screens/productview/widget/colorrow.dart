
import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';

class Colorrow extends StatelessWidget {
  const Colorrow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
      children: const[
           CircleAvatar(
              backgroundColor: Color.fromARGB(255, 239, 9, 9),
              radius: 25,
              ),
              kWidth10,
                 CircleAvatar(
              backgroundColor: Color.fromARGB(255, 0, 0, 0),
              radius: 25,
              ),
               kWidth10,
                 CircleAvatar(
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              radius: 25,
              ), 
               kWidth10,
                CircleAvatar(
              backgroundColor: Color.fromARGB(255, 77, 96, 221),
              radius: 25,
              )
      ],
        );
  }
}
