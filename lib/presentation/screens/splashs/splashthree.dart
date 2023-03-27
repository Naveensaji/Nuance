import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/presentation/screens/splashs/splashfive.dart';

class SplashThree extends StatelessWidget {
  const SplashThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('assets/images/WH_1000XM4_SilentWhite_Sub_B_gradation_low_for_wide_angle_8000x4262_Large.jpg',
            fit: BoxFit.cover,),
            ),
             Positioned(
              top: 50,
              left: 15,
              child: Text('Enjoy the world of\nmusic with best quality\nheadphones ...',
              style: GoogleFonts.redHatDisplay(
                textStyle:const TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w500
                )
              ),
              )),
          Positioned(
                bottom: 20,
                right: 10,
                 child: FloatingActionButton(
                     onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const SplashFive() ) );
                     },
                               elevation: 0,
                               backgroundColor: Colors.black,
                               splashColor: Colors.white,
                               child: const Icon(Icons.arrow_forward_ios_outlined), //<-- SEE HERE
                         ),
               ),
        ],
      ),
    );
  }
}