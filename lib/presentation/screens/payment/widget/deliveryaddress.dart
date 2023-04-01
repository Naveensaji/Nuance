
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/core/constants/constants.dart';
import 'package:nuance/domain/model/prodile_model.dart';
import 'package:nuance/functions/addressedit/addressedit.dart';
import 'package:nuance/functions/profile/editprofile.dart';
import 'package:nuance/functions/wishlist/wishlist_dunction.dart';
import 'package:nuance/presentation/screens/login/widget/whitetext.dart';

class Deliveryaddress extends StatelessWidget {
  const Deliveryaddress({
    Key? key,
    required this.addresscontroller,
  }) : super(key: key);

  final TextEditingController addresscontroller;
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
                onPressed: () {
                  Get.defaultDialog(
                    title: 'Please enter the address to be delievered',
                    content: TextFormField(
                    controller: addresscontroller,
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 5,
                      ),
                  cancel: ActionChip(label: const Text('Cancel'),
                  onPressed: () => Get.back()
                       ),
                  confirm: InputChip(label: const Text('Confirm'),
                  onPressed: () {
                    editaddress(profileModel: ProfileModel(
                    useremail: currentemail,
                    address: addresscontroller.text
                    ));
                    Get.back();
                  },
                  )

                  );
                },
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