
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/presentation/screens/login/widget/whitetext.dart';

class Deliveryaddress extends StatelessWidget {
  const Deliveryaddress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 135,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 41, 42, 44)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight10,
           Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Whitetext(text: 'Delivery Address', textsize: 16)
          ),
          ListTile(
          leading: const Icon(
              Icons.location_pin,
              color: kWhite,
            ),
            title:  Text(
              "INQ workspace PalarivattamOppo EMC Hospital NH Bypass\n682615 Kochi",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style:GoogleFonts.redHatDisplay(textStyle: const TextStyle(
                fontSize: 16,
                color: kWhite,
                fontWeight: FontWeight.w800
              ))
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  color: kWhite,
                )),
          ),
        ],
      ),
    );
  }
}