import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuance/presentation/screens/splashs/splashtwo.dart';
import 'package:nuance/presentation/screens/splashs/widgets/splashtext.dart';
import 'package:nuance/presentation/screens/splashs/widgets/imagecontainer.dart';

class SplashOne extends StatelessWidget {
  const SplashOne({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
       splashtwo(context);
      },
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Center(
              child: Column(
                children: 
                  [
                    const Imagecontainer(),
                    const SizedBox(height: 40,),
                    Splashtext(textsize: 35,),
                const Padding(padding:EdgeInsets.only(top: 300)),
                Image.asset('assets/images/Ellipsis-2.5s-221px.gif',
                height: 80,
                width: 80,)
                ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void>splashtwo(context) async{
  await  Future.delayed(const Duration(seconds: 3));
  Get.to(()=>const SplashTwo()) ;
  
    
  }
