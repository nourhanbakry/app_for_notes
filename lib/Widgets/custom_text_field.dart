import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final EdgeInsets? contentPadding;
  void Function(String?)? onSaved;

  CustomTextField(
      {super.key,
      required this.hintText,
       this.contentPadding,
      this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      onSaved: onSaved,
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
