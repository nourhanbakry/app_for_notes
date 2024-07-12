import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final EdgeInsets contentPadding;

  const CustomTextField(
      {super.key, required this.hintText, required this.contentPadding});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: contentPadding,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.tealAccent),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.white)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.white)),
      ),
    );
  }
}
