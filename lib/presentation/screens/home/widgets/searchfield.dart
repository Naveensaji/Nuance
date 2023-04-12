
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constants/constants.dart';
import '../../../../domain/controller/searchcontroller.dart';

class Searchfield extends StatelessWidget {
   Searchfield({
    Key? key,
    
  }) : super(key: key);

   final search = TextEditingController();
   final c = Get.put(Searchcontroller());
  @override
  Widget build(BuildContext context) {
  return GetBuilder<Searchcontroller>(
        builder: (c){
        return  Container(
        height: 55,
        width: 350,
        decoration: BoxDecoration(color: kBlack,
        borderRadius: BorderRadius.circular(50)
        ),
          child: ListTile(
          leading:const Icon(Icons.search,color: Colors.grey,),
          title: TextFormField(
          style: const TextStyle(color: kWhite,fontSize: 14),
          controller: search,
          onChanged: (value) {
              c.search(value);
            },
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
      });
  }
}