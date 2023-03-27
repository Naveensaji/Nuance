
import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

class Textfieldcontainer extends StatelessWidget {
   Textfieldcontainer({
    Key? key,
    required this.leadingicon,
   this.trailingicon,
    required this.title,
     this.controller,
     required this.hide,
     this.keyboardtype,
     this.validator,
     this.onsave
  
  }) : super(key: key);
final IconData leadingicon;
final IconData? trailingicon;
final String title;
final bool hide;
final TextInputType? keyboardtype;
final TextEditingController? controller;
final String? Function(String?)? validator;
final Function(String?)? onsave;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 290,
      decoration: BoxDecoration(color: kBlack,
      borderRadius: BorderRadius.circular(50)
      ),
      child: ListTile(
        leading: Icon(leadingicon,color: kGreyshade),
        trailing: Icon(trailingicon,color: kGreyshade,),
        title: TextFormField(
          obscureText:hide ,
          controller:controller ,
          onChanged: (value) {},
          cursorColor: kWhite,
          validator: validator,
          keyboardType: keyboardtype,
          onSaved: onsave,
          style: const TextStyle(color: kWhite),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: title,
            hintStyle: TextStyle(color: kGreyshade,fontSize: 13
            )
          ),
        ),
      ),
    );
  }
}