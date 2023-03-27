
import 'package:flutter/material.dart';
import 'package:nuance/presentation/screens/login/widget/text.dart';

class Brandrow extends StatelessWidget {
  const Brandrow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
             Textlogin(text: 'Popular brands',textsize: 15),
            Textlogin(text: 'See all', textsize: 15),
            ],
          ),
        );
  }
}
