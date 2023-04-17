
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';


class Policydialog extends StatelessWidget {
  Policydialog({super.key, required this.radius, required this.mdFilename})
      : assert(mdFilename.contains('.md'),
            'The file must contain the .md extention');
  final double radius;
  final String mdFilename;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      child: Column(children: [
        Expanded(
            child: FutureBuilder(
          future:
              Future.delayed(const Duration(milliseconds: 150)).then((value) {
            return rootBundle.loadString('assets/mdfile/$mdFilename');
          }),
          builder: (ctx, snapshot) {
            if (snapshot.hasData) {
              return Markdown(
                data: snapshot.data!,
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        )),
        ElevatedButton(
          // ignore: deprecated_member_use
          style: ElevatedButton.styleFrom(primary: Colors.black),
            onPressed: () {
              Get.back();
            },
            child: const Text(
              'Close',
              style: TextStyle(),
            ))
      ]),
    );
  }
}
