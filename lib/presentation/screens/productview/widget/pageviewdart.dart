import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nuance/core/constants/constants.dart';


class PageViewWidget extends StatelessWidget {
  const PageViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        color: kWhite,
        //borderRadius: BorderRadius.circular(20)
      ),
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          Image.network(
            'https://rukminim1.flixcart.com/image/416/416/k73nlow0/headphone/h/9/z/boat-rockerz-370-original-imafpef5cszgwxmx.jpeg?q=70',
            fit: BoxFit.contain,
          ),
          Image.network(
            'https://rukminim1.flixcart.com/image/416/416/k73nlow0/headphone/h/9/z/boat-rockerz-370-original-imafpef5cnqf6zcy.jpeg?q=70',
            fit: BoxFit.contain,
          ),
          Image.network(
            'https://rukminim1.flixcart.com/image/416/416/k7jdg280/headphone/h/9/z/boat-rockerz-370-original-imafpr3tsccbdkk5.jpeg?q=70',
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
