import 'package:flutter/material.dart';

class CustomEditText extends StatelessWidget {
  const CustomEditText({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 1,
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: const Color.fromARGB(255, 181, 196, 208), width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: const Color.fromARGB(255, 97, 97, 168), width: 2.0),
        ),
        hintText: 'Escribe aquí?',
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.italic,
          fontFamily: 'Futura Lt BT',
          color: const Color.fromARGB(255, 181, 196, 208),
        ),
        border: OutlineInputBorder(),
        fillColor: Colors.red,
      ),
    );
  }
}
