
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/constants.dart';

class ListtileWidget extends StatelessWidget {
   ListtileWidget({
    super.key, 
    this.leadIcon, 
    this.ontap,
    required this.title, 
  });

  final IconData? leadIcon;
  final String title;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(leadIcon,color: kWhite,),
      title: Text(title,style:  GoogleFonts.redHatDisplay(textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w300,color: kWhite)),),
      trailing:const Icon(Icons.arrow_forward_ios_outlined,color: kWhite,) ,
      onTap: ontap,
    );
  }
}
