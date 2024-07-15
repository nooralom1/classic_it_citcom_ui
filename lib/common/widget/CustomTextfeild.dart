import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final IconData? suffixIcon;
  final IconData prefixIcon;
  final String labelText;
  final String hintText;
  const CustomTextField({
    super.key, this.suffixIcon, required this.prefixIcon, required this.labelText, required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          suffixIcon: Icon(suffixIcon),
          prefixIcon: Icon(prefixIcon),
          hintText: hintText,
          labelText: labelText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(width: 1))),
    );
  }
}
