
import 'package:flutter/material.dart';

class EditFormfiled extends StatelessWidget {
  const EditFormfiled({
    super.key, 
    required this.text, 
    required this.controller, 
    this.keyboardtype,
  });
final String text;
  final TextEditingController controller;
  final TextInputType? keyboardtype;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
          controller:controller ,
          keyboardType: keyboardtype,
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          decoration:   InputDecoration(
              focusedBorder: const OutlineInputBorder(
     borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1),
              ),
              enabledBorder: const OutlineInputBorder(
     borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1.0),
              ),
              label: Text(
                   text,
     style: const TextStyle(color: Color.fromARGB(179, 0, 0, 0)),
              ),
              // hintText: 'Name Of the Product',
              hintStyle: const TextStyle(color: Color.fromARGB(179, 0, 0, 0))),
        );
  }
}