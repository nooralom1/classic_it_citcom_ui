
import 'package:flutter/material.dart';

class CustomElvtdButn extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPressed;
  final int bgColor;
  const CustomElvtdButn({
    super.key, required this.buttonName, required this.onPressed, required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(bgColor)
        ),
        onPressed: onPressed, child: Text(buttonName));
  }
}