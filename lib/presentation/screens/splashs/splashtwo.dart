import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/presentation/screens/splashs/splashthree.dart';

class SplashTwo extends StatelessWidget {
  const SplashTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('assets/images/splashtwo.png',
            fit: BoxFit.cover,
            ),
            ),
            Positioned(
              bottom: 150,
              child: Text('Welcome to ',
              style: GoogleFonts.redHatDisplay(
                textStyle: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w300
                )
              ),
              )),
                Positioned(
              bottom: 80,
              left: 150,
              child: Text(' Nuance ',
              style: GoogleFonts.redHatDisplay(
                textStyle:const TextStyle(
                  fontSize: 43,
                  fontWeight: FontWeight.w900
                )
              ),
              )),
               Positioned(
                bottom: 20,
                right: 10,
                 child: FloatingActionButton(
                     onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const SplashThree() ) );
                     },
                               elevation: 0,
                               backgroundColor: Colors.black,
                               splashColor: Colors.white,
                               child:const Icon(Icons.arrow_forward_ios_outlined), //<-- SEE HERE
                         ),
               ),
        ],
      ),
    );
  }
}