
import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class Searchfield extends StatelessWidget {
  const Searchfield({
    Key? key,
    required TextEditingController searchontroller,
  }) : _searchontroller = searchontroller, super(key: key);

  final TextEditingController _searchontroller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 350,
        decoration: BoxDecoration(color: kBlack,
          borderRadius: BorderRadius.circular(50)
        ),
        child: ListTile(
          leading:const Icon(Icons.search,color: Colors.grey,),
          title: TextFormField(
            style: const TextStyle(color: kWhite,fontSize: 14),
            controller:_searchontroller ,
            cursorColor: kWhite,
            decoration: const InputDecoration(
              border: InputBorder.none,
     hintText: 'Looking for headphones..?',
     hintStyle: TextStyle(
    fontSize: 14,
            color: Colors.grey,
            ),
            ),
          ),
       
        ),
    );
  }
}