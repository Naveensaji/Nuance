import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/presentation/screens/splashs/splashfour.dart';

class SplashFive extends StatelessWidget {
  const SplashFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: 
          [Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('assets/images/jsdf.jpg',
            fit: BoxFit.cover,
            ),
          ),
            Positioned(
              bottom: 20,
              left: 13,
              child: Text('Lets your headphone\nspeak more than\nyou...',
              style: GoogleFonts.redHatDisplay(
                textStyle:const TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.w800
                )
              ),
              )),
                 Positioned(
                bottom: 20,
                right: 10,
                 child: FloatingActionButton(
                     onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const SplashFour() ) );
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