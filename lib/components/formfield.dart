import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  final controller;
  final String text;
  final bool obscureText;

  const MyFormField({
    super.key,
    required this.controller,
    required this.text,
    required this.obscureText,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: text,
          hintStyle: TextStyle(color: Colors.grey[500])
        ),
      ),
    );
  }
}