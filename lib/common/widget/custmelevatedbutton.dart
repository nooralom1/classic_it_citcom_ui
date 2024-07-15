
import 'package:flutter/material.dart';

class CustomElvtdButn extends StatelessWidget {
  final String buttonName;
  final double buttonNameSize;
  final VoidCallback onPressed;
  final int bgColor;
  final int buttonNameColor;
  const CustomElvtdButn({
    super.key, required this.buttonName, required this.onPressed, required this.bgColor, required this.buttonNameColor, required this.buttonNameSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(bgColor)
        ),
        onPressed: onPressed, child: Text(buttonName,style: TextStyle(color: Color(buttonNameColor),fontSize: buttonNameSize),));
  }
}