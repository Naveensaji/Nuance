
import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';

class profiletile extends StatelessWidget {
   profiletile({
    Key? key,
    
      this.hinttext,
      this.errorText,
      this.leadingIcon,
    required TextEditingController controller,

  }) : super(key: key);
TextEditingController controller = TextEditingController();
  String? hinttext, errorText;
  IconData? leadingIcon;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 300,
        decoration: BoxDecoration(color: kBlack,
          borderRadius: BorderRadius.circular(50)
        ),
        child: ListTile(
          leading:Icon(leadingIcon,color: Colors.grey,),
          title: TextFormField(
            style: const TextStyle(color: kWhite,fontSize: 14),
            controller:controller ,
            cursorColor: kWhite,
            decoration: InputDecoration(
              errorText: errorText,
              hintText: hinttext,
              hintStyle: const TextStyle(
             fontSize: 14,
            color: Colors.grey,
            ),
            ),
          ),
         // trailing: Icon(trailingIcon,color: Colors.grey,),
        ),
    );
  }
}