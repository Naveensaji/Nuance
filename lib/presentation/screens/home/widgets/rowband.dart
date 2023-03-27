
import 'package:flutter/material.dart';
import 'package:nuance/presentation/screens/home/widgets/brandcircle.dart';
import 'package:nuance/presentation/screens/home/widgets/circleall.dart';

import '../../../../core/constants/constants.dart';

class Rowbrand extends StatelessWidget {
  const Rowbrand({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 60,
     child: ListView(
       scrollDirection: Axis.horizontal,
       children: [
         kWidth10,
         const Circleall(),
         //kWidth10,
        // Brandcircle(imagepath:  Image.network('https://gumlet.assettype.com/swarajya%2F2021-01%2F7a6e91f6-5862-4ac5-B08-eb5bf2a3e20c%2FboAt_logo.jpg?q=75&auto=format%2Ccompress&w=400&dpr=2.6',width: 40,),),
          kWidth10,
        Brandcircle(imagepath:  Image.network('https://gumlet.assettype.com/swarajya%2F2021-01%2F7a6e91f6-5862-4ac5-bb08-eb5bf2a3e20c%2FboAt_logo.jpg?q=75&auto=format%2Ccompress&w=400&dpr=2.6',width: 40,),),
          kWidth10,
        Brandcircle(imagepath:  Image.network('https://gumlet.assettype.com/swarajya%2F2021-01%2F7a6e91f6-5862-4ac5-bb08-eb5bf2a3e20c%2FboAt_logo.jpg?q=75&auto=format%2Ccompress&w=400&dpr=2.6',width: 40,),),
          kWidth10,
        Brandcircle(imagepath:  Image.network('https://gumlet.assettype.com/swarajya%2F2021-01%2F7a6e91f6-5862-4ac5-bb08-eb5bf2a3e20c%2FboAt_logo.jpg?q=75&auto=format%2Ccompress&w=400&dpr=2.6',width: 40,),),
          kWidth10,
        Brandcircle(imagepath:  Image.network('https://gumlet.assettype.com/swarajya%2F2021-01%2F7a6e91f6-5862-4ac5-bb08-eb5bf2a3e20c%2FboAt_logo.jpg?q=75&auto=format%2Ccompress&w=400&dpr=2.6',width: 40,),),
          kWidth10,
        Brandcircle(imagepath:  Image.network('https://gumlet.assettype.com/swarajya%2F2021-01%2F7a6e91f6-5862-4ac5-bb08-eb5bf2a3e20c%2FboAt_logo.jpg?q=75&auto=format%2Ccompress&w=400&dpr=2.6',width: 40,),),
       ],
     ),
    );
  }
}
