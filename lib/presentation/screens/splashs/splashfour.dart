import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuance/presentation/screens/login/login.dart';
import 'package:nuance/presentation/screens/login/loginmain.dart';

class SplashFour extends StatelessWidget {
  const SplashFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(image: AssetImage('assets/images/man-using-mobile-phone.jpg',),
              fit: BoxFit.cover
              )
            ),
            height:double.infinity,
            width: double.infinity,
           ),
       Positioned(
        bottom:50 ,
        left: 60,
         child: Column(
           children: [
             Stack(
               children: [
                 GestureDetector(
                  onTap: () {
                     Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> LoginPage() ) );
                  },
                   child: Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black,
                    ),
                    height: 50,
                    width: 250,
                    ),
                 ),
                  Positioned(
                    left: 20,
                    bottom: 15,
                    child: Text("Let's Get Started ...",
                    style: GoogleFonts.redHatDisplay(
                      textStyle: const TextStyle(
                        letterSpacing: 1,
                        color: Colors.white,
                        fontSize: 22
                      )
                    ),
                    ),
                  ),
                  
               ],
             ),
              Image.asset('assets/images/Ellipsis-2.5s-221px.gif',
            height: 60,
            width: 80,)
           ],
         ),
         
       )
        ],
        
      ),
      
    );
  }
}